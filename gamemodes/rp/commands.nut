if (CLIENT_SIDE) {
    local function onCommand(cmd, params) {
        //switch (cmd) {
            // for only test

        //}
    }
    addEventHandler("onCommand", onCommand)
} else {
    local function onCommand(plr, cmd, params) {
        if (getCharById(plr) == null) {
            switch (cmd) {
                case "login":
                    try {
                        local info = sscanf("ss", params);
                        local result = createPlayer(plr, info[0], info[1]);
                        if (result == true) {
                            sendMessageToPlayer(plr, 87, 224, 117, "Logged!");
                        } else {
                            sendMessageToPlayer(plr, 224, 87, 87, "Error! Wrong password!");
                        }
                    } catch(var) {
                        sendMessageToPlayer(plr, 224, 87, 87, "Wrong command! Use: /login (Account) (Password)");
                    }
                    break;
            }
        } else {
            switch (cmd) {
                case "exit":
                    //sscanf();
                    destroyPlayer(plr);
                    break;
                case "setname":
                    if (getCharById(plr).admin <= eModLevel.USER) return;

                    local info = sscanf("s", params);
                    //info = utf8_to_windows1251(info[0]);

                    getCharById(plr).setName(info[0]);

                    sendMessageToPlayer(plr, 255, 255, 255, "(NICKNAME): Changed");
                    break;
                case "getpos":
                    if (getCharById(plr).admin <= eModLevel.USER) return;

                    local pos = getCharById(plr).getPosition();
                    local angle = getCharById(plr).getAngle();
                    local sfile = file("gamemodes/rp/coord.txt", "w");
                    sfile.write(JSON.encode({x = pos.x, y = pos.y, z = pos.z, angle = angle}));
                    sfile.close();
                    sendMessageToPlayer(plr, 255, 255, 255, "(GETPOS): Saved pos!");
                    break;
                case "rcon":
                    if (getCharById(plr).admin == eModLevel.ADMIN)
                        return;

                    local info = sscanf("s", params);

                    if (info[0] == CONFIG.rcon) {
                        getCharById(plr).setAdmin(eModLevel.ADMIN);
                        sendMessageToPlayer(plr, 255, 255, 255, "(RCON): Claim admin rights!");
                    }
                    break;
                }
        }
    }
    addEventHandler("onPlayerCommand", onCommand)
}