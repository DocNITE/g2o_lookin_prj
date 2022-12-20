if (CLIENT_SIDE) {

    local function gameInit() {
        // Some shit
        enableEvent_Render(true);
        disableMusicSystem(false);

        Camera.movementEnabled = false;
        setFreeze(true);
        setPlayerPosition(heroId, CONFIG.garbage_spawn.x, CONFIG.garbage_spawn.y, CONFIG.garbage_spawn.z)
        setPlayerAngle(heroId, CONFIG.garbage_spawn.angle)

        setHudMode(HUD_ALL, HUD_MODE_HIDDEN)
        clearMultiplayerMessages();
        // Log
        print("[RP|Client]: Game is initialized...");
        //print(utf8_to_windows1251("фывфывфы"));
    }
    addEventHandler("onInit", gameInit);

} else {

    local function serverChatMessage(pid, message) {
        if (getCharById(pid) == null) return;

        print(getCharById(pid).name + " said: " + message);
        sendPlayerMessageToAll(pid, 255, 255, 255, message);
    }
    addEventHandler("onPlayerMessage", serverChatMessage)

    local function plrJoin(plr) {
        // Fuck fucking resp timer!
        setPlayerRespawnTime(plr, 0);
        setPlayerVirtualWorld(plr, 65535);
    }
    addEventHandler("onPlayerJoin", plrJoin);

    local function serverInit() {
        // Log
        print("[RP|Server]: Game is initialized...");
    }
    addEventHandler("onInit", serverInit);

}