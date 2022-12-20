/**
 * File reader/writer system for Database
 * Works like JSON, but i make my own syntax
 */

class FileManager {
    # reader:
    //...
    # mutable:
    file_path = null;

    /**
     * Class constructor
     * @param {string} _path file path
     */
    constructor(_path) {
        file_path = _path;
    }

    /**
     * Save info from table
     * @param {table} _data table info
     */
    function set(_data) {
        debug("(FileManager): Create file stream for '"+ file_path +"'");
        local stream = file(file_path, "w");
        local result;
        // Result process
        try {
            debug("(FileManager): Try to write data...");
            stream.write(private_set(_data));
            result = true;
            debug("(FileManager): Done!");
        } catch (exception) {
            // If we get some error
            debug("(FileManager): Error!");
            result = false;
        }
        stream.close();
        return result;
    }

    /**
     * Load info into table
     */
    function get() {
        debug("(FileManager): Trying read '"+ file_path +"'");
        local stream = file(file_path, "r");
        local result;
        // Result process
        try {
            debug("(FileManager): Process...");
            result = private_get(stream.read("a"));
            debug("(FileManager): Done! Table created!");
        } catch (exception) {
            // If we get some error
            debug("(FileManager): Error! File don't exist...");
            result = false;
        }
        stream.close();
        return result;
    }

    # private:
    function private_set(_data, depth = 0, isArray = false) {
        local buffer;
        if (typeof _data == "table")
            buffer = "{";   //buffer = "{\n";
        else if (typeof _data == "array")
            buffer = "[";   //buffer = "[\n";

        local _i = 1;
        foreach (key, value in _data) {
            //if (depth > 0) {
                //for(local i = 1; i <= depth; i++)
                    //buffer += "  ";
            //}

            if (!isArray)
                buffer += key + ":";

            if (typeof value == "table") {
                buffer += private_set(value, depth+1);
            } else if (typeof value == "array") {
                buffer += private_set(value, depth+1, true);
            } else {
                buffer += value;
            }

            if (depth < 1) {
                if (_i < _data.len())
                    buffer += ";";    //buffer += ",\n";
                // else
                    //buffer += "\n";
            }

            _i += 1;
        }
        if (typeof _data == "table")
            buffer += "}";
        else if (typeof _data == "array")
            buffer += "]";

        return buffer;
    }

    function private_get(_data) {
        local objects;
        local result;

        if (_data.slice(0, 1) == "{") {
            result = {};
        } else if (_data.slice(0, 1) == "[") {
            result = [];
        }

        local objects = split(_data, ",");

        local _i = 1;
        foreach (key in objects) {
            if (_i == 1 )
                key = key.slice(1,key.len());
            else if (_i >= objects.len())
                key = key.slice(0,key.len()-1);

            _i++;
            print(key)
            if (typeof result == "table") {
                local info = split(key, ":");

                result[info[0]] <- "";
                if (info[1].slice(0, 1) == "{") {
                    result[info[0]] = private_get(info[1]);
                } else if (info[1].slice(0, 1) == "[") {
                    result[info[0]] = private_get(info[1]);
                } else {
                    result[info[0]] = info[1];
                }
                print(result[info[0]])
            } else if (typeof result == "array") {
                if (key.slice(0, 1) == "{") {
                    result.append(private_get(key));
                } else if (key.slice(0, 1) == "[") {
                    result.append(private_get(key));
                } else {
                    result.append(key);
                }
            }
        }
        return result;
    }
}