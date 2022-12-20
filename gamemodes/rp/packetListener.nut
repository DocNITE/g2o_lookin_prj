local listeners = [];

function addPacketListener(id, _func) {
    listeners.append({ id = id, func = _func});
}

if (CLIENT_SIDE) {
    local function packetListener(packet) {
        local id = packet.readUInt8();

        foreach(listen in listeners)
            if(listen.id == id)
                listen.func(packet);
    }
    addEventHandler("onPacket", packetListener)
} else {
    local function packetListener(pid, packet) {
        local id = packet.readUInt8();

        foreach(listen in listeners)
            if(listen.id == id)
                listen.func(pid, packet);
    }
    addEventHandler("onPacket", packetListener)
}