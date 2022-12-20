class Packet extends Packet {
    constructor(packetId) {
        base.constructor();
        writeUInt8(packetId);
    }
    /**
     * Use it for Character's synch stat
     * @param {...} values description
     */
    /*
    function syncStat({...}) {
        local packet = Packet(vargv[0]);
        packet.writeUInt8(vargv[1]);

        local _i = 1;
        foreach (value in vargv) {
            if (_i > 3) {
                if (typeof "integer") {
                    if (value >= -128 && value <= 127)
                        packet.writeInt8(value);
                    else if (value >= 0 && value <= 255)
                        packet.writeUInt8(value);
                    else if (value >= -32768 && value <= 32767)
                        packet.writeInt16(value);
                }
            }
            _i++;
        }
        if (CLIENT_SIDE) {

           // packet.writeUInt8(ePacketStat.Name);
            //packet.writeString(_name);
            packet.send(RELIABLE_ORDERED);
        } else {

            //packet.writeUInt8(ePacketStat.Name);
            //packet.writeString(_name);
            packet.writeUInt8(vargv[2]);
            packet.sendToAll(RELIABLE_ORDERED);
        }
    }*/   // WORK IN PROGRESS
}

enum ePacket {
    CreatePlayer = 0,
    DeletePlayer = 1,
    EnableSprint = 2,
    ChangeStat   = 3
}

enum ePacketStat {
    Name = 0,
    Admin = 1
}