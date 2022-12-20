CHAR_GLOBAL <- array(getMaxSlots()*8);

function insertChar(obj) {
    for(local i = 0; i < CHAR_GLOBAL.len(); i++) {
        if (CHAR_GLOBAL[i] == null) {
            CHAR_GLOBAL[i] = obj;
            return true;
        }
    }
    return false
}
function removeChar(obj) {
    for(local i = 0; i < CHAR_GLOBAL.len(); i++) {
        if (CHAR_GLOBAL[i] != null && CHAR_GLOBAL[i] == obj) {
            CHAR_GLOBAL[i] = null;
            return true;
        }
    }
    return false;
}
if (CLIENT_SIDE) {
    function getLocalId() {
        for(local i = 0; i < CHAR_GLOBAL.len(); i++) {
            if (CHAR_GLOBAL[i] != null && CHAR_GLOBAL[i].id == heroId)
                return CHAR_GLOBAL[i];
        }
        return null;
    }
}
function getCharById(plr) {
    for(local i = 0; i < CHAR_GLOBAL.len(); i++) {
        if (CHAR_GLOBAL[i] != null && CHAR_GLOBAL[i].id == plr)
            return CHAR_GLOBAL[i];
    }
    return null;
}


class Character {
    # reader:
    id = -1;
    name = "royclapton";  // best Gothic Online dev
    instance = "PC_HERO";
    // Orientaion/Pos
    position = {x = 0, y = 0, z = 0};
    rotation = 0;
    // Visual
    body_model = "HUM_BODY_NAKED0";
    body_tex   = 8;
    head_model = "HUM_HEAD_PONY";
    head_tex   = 18;
    // Walk style
    //walk_overlay = "HUMANS.MDS";
    // Main stats
    health = -1; # mutable: {amount = ..., max_amount = ...}
    energy = -1; # mutable: {amount = ..., max_amount = ...}
    magic  = -1; # mutable: {amount = ..., max_amount = ...}
    // ...
    strength    = -1;
    dexterity   = -1;
    // Weapon skill
    swing_skill = -1; // Swords, Saber...
    prick_skill = -1; // Spear, Dagger...
    blunt_skill = -1; // Stuff, Mace...
    // Range wep. skill
    bow_skill   = -1;
    cbow_skill  = -1;
    // Equipment Weapon
    weapon_slot = "NULL";
    range_slot  = "NULL";
    // Equipment Armor
    armor_slot  = "NULL";
    helmet_slot = "NULL";
    # mutable:
    can_damage = true;
    can_sprint = false;

    constructor(_info) {
        id = _info.id;
        name = _info.name;
        instance = _info.instance;

        position = _info.position,
        rotation = _info.rotation,

        body_model = _info.body_model;
        body_tex   = _info.body_tex;
        head_model = _info.head_model;
        head_tex   = _info.head_tex;
        debug("(CharInstance): Making character for id... " + id);
        if (_info.health.amount < 1)
            _info.health.amount = 1;

        health  = {amount = _info.health.amount, max_amount = _info.health.max_amount};
        energy  = {amount = _info.energy.amount, max_amount = _info.energy.max_amount};
        magic   = {amount = _info.magic.amount, max_amount = _info.magic.max_amount};
        debug("(CharInstance): Reading table info... ");
        strength    = _info.strength;
        dexterity   = _info.dexterity;
        // Weapon skill
        swing_skill = _info.swing_skill; // Swords, Saber...
        prick_skill = _info.prick_skill; // Spear, Dagger...
        blunt_skill = _info.blunt_skill; // Stuff, Mace...
        // Range wep. skill
        bow_skill   = _info.bow_skill;
        cbow_skill  = _info.cbow_skill;
        // Equipment Weapon
        weapon_slot = _info.weapon_slot;
        range_slot  = _info.range_slot;
        // Equipment Armor
        armor_slot  = _info.armor_slot;
        helmet_slot = _info.helmet_slot;
        debug("(CharInstance): Table info is cloned... ");

        setPlayerPosition(id,
            position.x,
            position.y,
            position.z)
        setPlayerAngle(id, rotation)
        setPlayerInstance(id, instance);
        setPlayerVisual(id, body_model, body_tex, head_model, head_tex);
        //setPlayerName(id, utf8_to_windows1251(name))
        setPlayerMaxHealth(id, 1000000); setPlayerHealth(id, 1000000);
        setPlayerMaxMana(id, 10000); setPlayerMaxMana(id, 10000);
        debug("(CharInstance): Main attributes is done... ");
        setPlayerStrength(id, 500);
        setPlayerDexterity(id, 500);
        debug("(CharInstance): Str/Dex is done... ");
        setPlayerSkillWeapon(id, WEAPON_1H, 50);
        setPlayerSkillWeapon(id, WEAPON_2H, 50);
        setPlayerSkillWeapon(id, WEAPON_BOW, 100);
        setPlayerSkillWeapon(id, WEAPON_CBOW, 100);
        debug("(CharInstance): Skills is done... ");

        if (SERVER_SIDE) {
            //applyPlayerOverlay(id, Mds.id(walk_overlay));
        }

        insertChar(this);
        debug("(CharInstance): Instance suscceful created! ");
    }

    function setName(_name) {
        name = _name;

        if (CLIENT_SIDE) {
            local packet = Packet(ePacket.ChangeStat);
            packet.writeUInt8(ePacketStat.Name);
            packet.writeString(_name);
            packet.send(RELIABLE_ORDERED);
        } else {
            local packet = Packet(ePacket.ChangeStat);
            packet.writeUInt8(ePacketStat.Name);
            packet.writeUInt8(id);
            packet.writeString(_name);
            packet.sendToAll(RELIABLE_ORDERED);
        }
    }

    function setPosition(x, y, z) {
        setPlayerPosition(id, x, y, z);
        position = {x = x, y = y, z = z};
    }

    function getPosition() {
        local pos = getPlayerPosition(id);
        position = {x = pos.x, y = pos.y, z = pos.z};
        return pos;
    }

    function setAngle(angle) {
        setPlayerAngle(id, angle);
        rotation = angle;
    }

    function getAngle() {
        local angle = getPlayerAngle(id);
        rotation = angle;
        return angle;
    }

    function setSprint(toggle) {
        can_sprint = toggle;
        if (CLIENT_SIDE) {
            local packet = Packet(ePacket.EnableSprint);
            packet.writeBool(toggle);
            packet.send(UNRELIABLE_SEQUENCED);
        } else {
            if (!toggle)
			{
				removePlayerOverlay(id, Mds.id("HUMANS_SPRINT.MDS"))
			}
			else
			{
				applyPlayerOverlay(id, Mds.id("HUMANS_SPRINT.MDS"))
			}
        }
    }

    function destroy() {
        debug("(CharInstance): Destroying character by id... " + id);
        removeChar(this);
    }
}

if (CLIENT_SIDE) {
    local fDraw = Draw3d(0,0,0);
    local fFocus = null;
    local function focusOnChar(cID, pID) { //currentID, previousID
        if (cID == -1) {
            fDraw.removeText(0);
            fDraw.visible = false;
            fFocus = null;
            return;
        }

        local char = getCharById(cID);
        if (char == null)
            return;

        if (pID != cID) {
            fDraw.removeText(0);
            fDraw.insertText(char.name);
            fDraw.visible = true;
        }

        local cP = getPlayerPosition(char.id);
        fDraw.setWorldPosition(cP.x, cP.y + 1, cP.z);
        fFocus = char.id;
    }
    addEventHandler("onFocus", focusOnChar);

    local function render() {
        if (fFocus == null)
            return;

        local cP = getPlayerPosition(fFocus);
        fDraw.setWorldPosition(cP.x, cP.y + 1, cP.z);
    }
    addEventHandler("onRender", render)

    local function keyHandler(key) {
        if (localId == null) return;

        if (isKeyToggled(KEY_Z)) {
            localId.setSprint(!localId.can_sprint);
        }
    }
    addEventHandler("onKey", keyHandler);

    // For stats|client
    addPacketListener(ePacket.ChangeStat, function (packet) {
        local statId = packet.readUInt8();
        local pid = packet.readUInt8();
        local char = getCharById(pid);
        if (char == null) return;

        switch (statId) {
            case ePacketStat.Name:
                char.name = packet.readString();
                break;
        }
    })
} else {
    // For sprint method
    addPacketListener(ePacket.EnableSprint, function (pid, packet) {
        local char = getCharById(pid);
        if (char == null) return;

        char.setSprint(packet.readBool());
    })
    // For stats
    addPacketListener(ePacket.ChangeStat, function (pid, packet) {
        local statId = packet.readUInt8();
        local char = getCharById(pid);
        if (char == null) return;

        switch (statId) {
            case ePacketStat.Name:
                char.setName(packet.readString());
                break;
        }
    })
}
