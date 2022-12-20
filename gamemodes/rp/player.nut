# client attr:
localId <- null;
# server attr:
// TODO:

class Player extends Character {
    # reader:
    account = ""
    admin = eModLevel.USER;
    # mutable:
    password = "0";

    constructor(_id, _name, _password, _info) {
        // Make NPC/Character info
        local info;
        debug("(PlayerInstance): Create attributes... ");
        if (!_info)
        {
            info = {
                id = _id,
                account = _name,
                name = _name,
                instance = "PC_HERO",
                body_model = "HUM_BODY_NAKED0",
                body_tex = 8,
                head_model = "HUM_HEAD_PONY",
                head_tex = 18,
                health = {amount = 40, max_amount = 40},
                energy = {amount = 100, max_amount = 100},
                magic = {amount = 10, max_amount = 10},
                strength    = 10,
                dexterity   = 10,
                // Weapon skill
                swing_skill = 10, // Swords, Saber...
                prick_skill = 10, // Spear, Dagger...
                blunt_skill = 10, // Stuff, Mace...
                // Range wep. skill
                bow_skill   = 10,
                cbow_skill  = 10,
                // Equipment Weapon
                weapon_slot = "NULL",
                range_slot  = "NULL",
                // Equipment Armor
                armor_slot  = "NULL",
                helmet_slot = "NULL",
                // Player info
                admin = eModLevel.USER,
                password = _password,

                position = CONFIG.default_spawn,
                rotation = CONFIG.default_spawn.angle
            }

            if (SERVER_SIDE)
                info = load(info);

        } else {
            info = _info;
        }
        //Character.constructor.call(this)
        base.constructor(info);

        // Player class attribute:
        account = info.account;
        admin = info.admin;
        password = info.password;

        // For server logic
        if (SERVER_SIDE) {
            debug("(PlayerInstance): Spawn player...");
            setPlayerName(info.id, account)
            spawnPlayer(info.id);
            setPlayerVirtualWorld(info.id, 0);

            debug("(PlayerInstance): Sync... ");
            local pSync = Packet(ePacket.CreatePlayer);
            // Main stats
            pSync.writeUInt8(_id);
            pSync.writeString(info.account);
            pSync.writeString(info.name);
            pSync.writeString(info.instance);
            pSync.writeString(info.body_model);
            pSync.writeUInt16(info.body_tex);
            pSync.writeString(info.head_model);
            pSync.writeUInt16(info.head_tex);
            pSync.writeUInt16(info.health.amount);
            pSync.writeUInt16(info.health.max_amount);
            pSync.writeUInt8(info.energy.amount);
            pSync.writeUInt8(info.energy.max_amount);
            pSync.writeUInt16(info.magic.amount);
            pSync.writeUInt16(info.magic.max_amount);

            pSync.writeUInt16(info.strength);
            pSync.writeUInt16(info.dexterity);
            // Weapon skill
            pSync.writeUInt8(info.swing_skill);
            pSync.writeUInt8(info.prick_skill);
            pSync.writeUInt8(info.blunt_skill);
            pSync.writeUInt8(info.bow_skill);
            pSync.writeUInt8(info.cbow_skill);
            // Equipment Weapon
            pSync.writeString(info.weapon_slot);
            pSync.writeString(info.range_slot);
            pSync.writeString(info.armor_slot);
            pSync.writeString(info.helmet_slot);
            // Other
            pSync.writeUInt8(admin);
            pSync.writeString(password); # not safe

            pSync.writeInt32(position.x);
            pSync.writeInt32(position.y);
            pSync.writeInt32(position.z);
            pSync.writeInt16(rotation);
            pSync.sendToAll(RELIABLE_ORDERED);
            debug("(PlayerInstance): Done!... ");
            // Save player info
            save();
        } else {
            if (_id == heroId) {
                debug("(PlayerInstance|Client): Set new localId... ");
                localId = getLocalId();
                Camera.movementEnabled = true;
                debug("(Camera|Client): Camera movement set: " + Camera.movementEnabled);
                setFreeze(false);
            }
        }
    }

    function setAdmin(_num) {
        admin = _num;

        if (CLIENT_SIDE) {
            local packet = Packet(ePacket.ChangeStat);
            packet.writeUInt8(_num);
            packet.send(RELIABLE_ORDERED);
        } else {
            local packet = Packet(ePacket.ChangeStat);
            packet.writeUInt8(id);
            packet.writeUInt8(_num);
            packet.sendToAll(RELIABLE_ORDERED);
        }
    }

    # methods:
    function load(_info) {
        if (CLIENT_SIDE) return _info;

        local result;

        try {
            debug("(DB): Loading player by id: " + _info.id)
            local pfile = file(DB_PATH+_info.account+".txt", "r");
            result = JSON.decode(pfile.read("a"));
            // Test errors
            debug(result.name);
            // Load stats
            local info = {
                id = _info.id,
                account = _info.account,
                name = result.name,
                instance = result.instance,
                body_model = result.body_model,
                body_tex = result.body_tex,
                head_model = result.head_model,
                head_tex = result.head_tex,
                health = {amount = result.health.amount, max_amount = result.health.max_amount},
                energy = {amount = result.energy.amount, max_amount = result.energy.max_amount},
                magic = {amount = result.magic.amount, max_amount = result.magic.max_amount},
                strength    = result.strength,
                dexterity   = result.dexterity,
                // Weapon skill
                swing_skill = result.swing_skill, // Swords, Saber...
                prick_skill = result.prick_skill, // Spear, Dagger...
                blunt_skill = result.blunt_skill, // Stuff, Mace...
                // Range wep. skill
                bow_skill   = result.bow_skill,
                cbow_skill  = result.cbow_skill,
                // Equipment Weapon
                weapon_slot = result.weapon_slot,
                range_slot  = result.range_slot,
                // Equipment Armor
                armor_slot  = result.armor_slot,
                helmet_slot = result.helmet_slot,
                admin = result.admin,
                password = result.password,

                position = result.position,
                rotation = result.rotation,
            };
            // Overwrite old data
            _info = info;
            pfile.close();
            debug("(DB): Done!")
        } catch (exception){
            result = false;
        }
        return _info;
    }

    function save() {
        if (CLIENT_SIDE) return;

        local pfile = file(DB_PATH+account+".txt", "w");
        local sTable = this;

        local pos = getPosition();
        local angle = getAngle();
        debug("(DB): Player '" + account + "' saved in location: x="+pos.x+"y="+pos.y+"z="+pos.z)
        pfile.write(JSON.encode(sTable));
        pfile.close();
    }

    function destroy() {
        save();

        if (CLIENT_SIDE) {
            if (id == localId.id)
                localId = null;
        }

        base.destroy();
    }
}

if (CLIENT_SIDE) {
    // It needed for client `CHAR_GLOBAL` sync
    local function onPacketSync(packet) {
        local pid = packet.readUInt8();
        if (pid == ePacket.CreatePlayer) {
            // Make client info about player
            debug("(PlayerInstance|Client): Readin' packet id: " + pid);
            local info = {
                id = packet.readUInt8(),
                account = packet.readString(),
                name = packet.readString(), //tpdp
                instance = packet.readString(),
                body_model = packet.readString(),
                body_tex = packet.readUInt16(),
                head_model = packet.readString(),
                head_tex = packet.readUInt16(),
                health = {amount = packet.readUInt16(), max_amount = packet.readUInt16()},
                energy = {amount = packet.readUInt8(), max_amount = packet.readUInt8()},
                magic = {amount = packet.readUInt16(), max_amount = packet.readUInt16()},
                strength    = packet.readUInt16(),
                dexterity   = packet.readUInt16(),
                // Weapon skill
                swing_skill = packet.readUInt8(), // Swords, Saber...
                prick_skill = packet.readUInt8(), // Spear, Dagger...
                blunt_skill = packet.readUInt8(), // Stuff, Mace...
                // Range wep. skill
                bow_skill   = packet.readUInt8(),
                cbow_skill  = packet.readUInt8(),
                // Equipment Weapon
                weapon_slot = packet.readString(),
                range_slot  = packet.readString(),
                // Equipment Armor
                armor_slot  = packet.readString(),
                helmet_slot = packet.readString(),

                admin = packet.readUInt8(),
                password = packet.readString(),

                position = {x = packet.readInt32(), y = packet.readInt32(), z = packet.readInt32()},
                rotation = packet.readInt16(),
            }
            debug("(PlayerInstance|Client): Valid info? .instance=" + info.instance);
            debug("(PlayerInstance|Client): Try to make instance for id: " + info.id + ", " + info.account);
            if (localId == null && info.id != heroId) {
                debug("(PlayerInstance|Client): Instance can't be created, while 'local player' not created!");
                return;
            }
            local lPlr = Player(info.id, info.account, info.password, info);
            // Connect log
            debug("(PlayerInstance|Client): " + getCharById(plr).account + " has join!");
        } else if (pid == ePacket.DeletePlayer) {
            // Destroy client info about player
            local lId = packet.readUInt8();
            local lName = getCharById(lId).account;
            // Destroy chatacter
            getCharById(lId).destroy();
            // So, if we want RELOG, than delete all our client instances
            if (lId == heroId) {
                debug("(PlayerInstance|Client): Detected heroId in destroy process!")
                Camera.movementEnabled = false;
                setFreeze(true);
                setPlayerPosition(heroId, CONFIG.garbage_spawn.x, CONFIG.garbage_spawn.y, CONFIG.garbage_spawn.z);
                setPlayerAngle(heroId, CONFIG.garbage_spawn.angle);

                for(local i = 0; i < CHAR_GLOBAL.len(); i++){
                    if (CHAR_GLOBAL[i] == null)
                        continue;

                    CHAR_GLOBAL[i].destroy();
                }
            }
            debug("(PlayerInstance|Client): " + lName + " disconnect from server... Goodbye :()");
        }
    }
    addEventHandler("onPacket", onPacketSync)

    // For stats|client
    addPacketListener(ePacket.ChangeStat, function (packet) {
        local statId = packet.readUInt8();
        local pid = packet.readUInt8();
        local char = getCharById(pid);
        if (char == null) return;

        switch (statId) {
            case ePacketStat.Admin:
                char.admin = packet.readUInt8();
                break;
        }
    })
} else {
    // Make new player instance
    function createPlayer(id, name, password) {
        // make new player
        debug("(PlayerInstance): Try to make instance for id: " + id + ", " + getPlayerName(id));
        // Check existence inst
        if (getCharById(id) != null) {
            debug("(PlayerInstance): That instance already used!");
            return;
        }
        // Check exist account
        local result;
        try {
            local pfile = file(DB_PATH+name+".txt", "r");
            local tabl = JSON.decode(pfile.read("a"));

            debug(password + ", " + tabl.password)
            if (password != tabl.password) {
                result = false;
            } else {
                result = true;
            }
        } catch(var) {
            result = true;
        }

        if (result == false) {
            return false;
        }

        Player(id, name, password, null);

        // Synch players for new client
        for(local i = 0; i < CHAR_GLOBAL.len(); i++){
            if (CHAR_GLOBAL[i] == null || CHAR_GLOBAL[i].id == id)
                continue;

            local info = CHAR_GLOBAL[i];

            local pSync = Packet(ePacket.CreatePlayer);
            // Main stats
            pSync.writeUInt8(info.id);
            pSync.writeString(info.account);
            pSync.writeString(info.name);
            pSync.writeString(info.instance);
            pSync.writeString(info.body_model);
            pSync.writeUInt16(info.body_tex);
            pSync.writeString(info.head_model);
            pSync.writeUInt16(info.head_tex);
            pSync.writeUInt16(info.health.amount);
            pSync.writeUInt16(info.health.max_amount);
            pSync.writeUInt8(info.energy.amount);
            pSync.writeUInt8(info.energy.max_amount);
            pSync.writeUInt16(info.magic.amount);
            pSync.writeUInt16(info.magic.max_amount);

            pSync.writeUInt16(info.strength);
            pSync.writeUInt16(info.dexterity);
            // Weapon skill
            pSync.writeUInt8(info.swing_skill);
            pSync.writeUInt8(info.prick_skill);
            pSync.writeUInt8(info.blunt_skill);
            pSync.writeUInt8(info.bow_skill);
            pSync.writeUInt8(info.cbow_skill);
            // Equipment Weapon
            pSync.writeString(info.weapon_slot);
            pSync.writeString(info.range_slot);
            pSync.writeString(info.armor_slot);
            pSync.writeString(info.helmet_slot);
            // Other
            pSync.writeUInt8(info.admin);
            pSync.writeString(info.password); # not safe

            pSync.writeInt32(info.position.x);
            pSync.writeInt32(info.position.y);
            pSync.writeInt32(info.position.z);
            pSync.writeInt16(info.rotation);
            //pSync.writeString(password); # not safe
            pSync.send(id, RELIABLE_ORDERED);
        }
        debug("(PlayerInstance): " + getCharById(id).account + " has join! Welcome!");
        giveItem(id, Items.id("MYNEWSWORD"), 1);
        return true;
    }
    // Destory player instance
    function destroyPlayer(id) {
        // destroy player
        if (getCharById(id) == null) {
            debug("(PlayerInstance): Can't find instance!");
            return;
        }
        local lName = getCharById(id).account;
        local pSync = Packet(ePacket.DeletePlayer);
        pSync.writeUInt8(getCharById(id).id);
        pSync.sendToAll(RELIABLE);
        getCharById(id).destroy();
        unspawnPlayer(id);
        setPlayerVirtualWorld(id, 65535);
        debug("(PlayerInstance): " + lName + " leave game... Goodbye :()");
    }
    local function onPlrLeave(plr, reason) {
        destroyPlayer(plr);
        //setPlayerVirtualWorld(plr, 65535);
    }
    addEventHandler("onPlayerDisconnect", onPlrLeave);

    // For stats | server
    addPacketListener(ePacket.ChangeStat, function (pid, packet) {
        local statId = packet.readUInt8();
        local char = getCharById(pid);
        if (char == null) return;

        switch (statId) {
            case ePacketStat.Admin:
                char.setAdmin(packet.readUInt8());
                break;
        }
    })
}