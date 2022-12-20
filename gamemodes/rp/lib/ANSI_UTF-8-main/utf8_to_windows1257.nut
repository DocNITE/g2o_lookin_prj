local utf8_windows1257_map =
{
    ["\xe2\x82\xac"] = "\x80", // euro sign
    ["\xe2\x80\x9a"] = "\x82", // lower quotation mark
    ["\xe2\x80\x9e"] = "\x84", // lower quotation marks
    ["\xe2\x80\xa6"] = "\x85", // ellipsis
    ["\xe2\x80\xa0"] = "\x86", // dagger
    ["\xe2\x80\xa1"] = "\x87", // double dagger
    ["\xe2\x80\xb0"] = "\x89", // per mille
    ["\xe2\x80\xb9"] = "\x8b", // left guillemet
    ["\xc2\xa8"] = "\x8d", // diaeresis
    ["\xcb\x87"] = "\x8e", // caron
    ["\xc2\xb8"] = "\x8f", // cedilla

    ["\xe2\x80\x98"] = "\x91", // upper quotation mark (opening)
    ["\xe2\x80\x99"] = "\x92", // upper quotation mark (closing)
    ["\xe2\x80\x9c"] = "\x93", // upper quotation marks (opening)
    ["\xe2\x80\x9d"] = "\x94", // upper quotation marks (closing)
    ["\xe2\x80\xa2"] = "\x95", // bullet sign
    ["\xe2\x80\x93"] = "\x96", // en dash
    ["\xe2\x80\x94"] = "\x97", // em dash
    ["\xe2\x84\xa2"] = "\x99", // trademark sign
    ["\xe2\x80\xba"] = "\x9b", // right guillemet
    ["\xc2\xaf"] = "\x9d", // macron
    ["\xcb\x9b"] = "\x9e", // ogonek

    ["\x20"] = "\xa0", // NBSP
    ["\xc2\xa2"] = "\xa2", // cent unit
    ["\xc2\xa3"] = "\xa3", // pound sterling unit
    ["\xc2\xa4"] = "\xa4", // currency sign
    ["\xc2\xa6"] = "\xa6", // vertical bar
    ["\xc2\xa7"] = "\xa7", // section sign
    ["\xc2\xa8"] = "\xa8", // O with stroke
    ["\xc2\xa9"] = "\xa9", // copyright sign
    ["\xc5\x96"] = "\xaa", // R-cedilla
    ["\xc2\xab"] = "\xab", // left guillemets
    ["\xc2\xac"] = "\xac", // negation
    ["\xc2\xad"] = "\xad", // soft hyphen
    ["\xc2\xae"] = "\xae", // registered trademark sign
    ["\xc2\xaf"] = "\xaf", // AE

    ["\xc2\xb0"] = "\xb0", // degree sign
    ["\xc2\xb1"] = "\xb1", // plus-minus sign
    ["\xc2\xb2"] = "\xb2", // square function
    ["\xc2\xb3"] = "\xb3", // cube function
    ["\xc2\xb4"] = "\xb4", // acute accent
    ["\xc2\xb5"] = "\xb5", // Mu letter
    ["\xc2\xb6"] = "\xb6", // pilcrow
    ["\xc2\xb7"] = "\xb7", // middle dot
    ["\xc3\xb8"] = "\xb8", // o with stroke
    ["\xc2\xb9"] = "\xb9", // superscript
    ["\xc5\x97"] = "\xba", // r-cedilla
    ["\xc2\xbb"] = "\xbb", // right guillemets
    ["\xc2\xbc"] = "\xbc", // one quarter
    ["\xc2\xbd"] = "\xbd", // one half
    ["\xc2\xbe"] = "\xbe", // three quarter
    ["\xc2\xbf"] = "\xbf", // ae

    ["\xc4\x84"] = "\xc0", // A with ogonek
    ["\xc4\xae"] = "\xc1", // I with ogonek
    ["\xc4\x80"] = "\xc2", // A with macron
    ["\xc4\x86"] = "\xc3", // C with acute
    ["\xc3\x84"] = "\xc4", // A with diaeresis
    ["\xc3\x85"] = "\xc5", // A with overring
    ["\xc4\x98"] = "\xc6", // E with ogonek
    ["\xc4\x92"] = "\xc7", // E with macron
    ["\xc4\x8c"] = "\xc8", // C with caron
    ["\xc3\x89"] = "\xc9", // E with acute
    ["\xc5\xb9"] = "\xca", // Z with acute
    ["\xc4\x96"] = "\xcb", // E with dot above
    ["\xc4\xa2"] = "\xcc", // G-cedilla
    ["\xc4\xb6"] = "\xcd", // K-cedilla
    ["\xc4\xaa"] = "\xce", // I with macron
    ["\xc4\xbb"] = "\xcf", // L-cedilla

    ["\xc5\xa0"] = "\xd0", // S with caron
    ["\xc5\x83"] = "\xd1", // N with acute
    ["\xc5\x85"] = "\xd2", // N-cedilla
    ["\xc3\x93"] = "\xd3", // O with acute
    ["\xc5\x8c"] = "\xd4", // O with macron
    ["\xc3\x95"] = "\xd5", // O with tilde
    ["\xc3\x96"] = "\xd6", // O with diaeresis
    ["\xc3\x97"] = "\xd7", // multiplication sign
    ["\xc5\xb2"] = "\xd8", // U with ogonek
    ["\xc5\x81"] = "\xd9", // L with stroke
    ["\xc5\x9a"] = "\xda", // S with acute
    ["\xc5\xaa"] = "\xdb", // U with macron
    ["\xc3\x9c"] = "\xdc", // U with diaeresis
    ["\xc5\xbb"] = "\xdd", // Z with dot above
    ["\xc5\xbd"] = "\xde", // Z with caron
    ["\xc3\x9f"] = "\xdf", // eszett

    ["\xc4\x85"] = "\xe0", // a with ogonek
    ["\xc4\xaf"] = "\xe1", // i with ogonek
    ["\xc4\x81"] = "\xe2", // a with macron
    ["\xc4\x87"] = "\xe3", // c with acute
    ["\xc3\xa4"] = "\xe4", // a with diaeresis
    ["\xc3\xa5"] = "\xe5", // a with overring
    ["\xc4\x99"] = "\xe6", // e with ogonek
    ["\xc4\x93"] = "\xe7", // e with macron
    ["\xc4\x8d"] = "\xe8", // c with caron
    ["\xc3\xa9"] = "\xe9", // e with acute
    ["\xc5\xba"] = "\xea", // z with acute
    ["\xc4\x97"] = "\xeb", // e with dot above
    ["\xc4\xa3"] = "\xec", // g-cedilla
    ["\xc4\xb7"] = "\xed", // k-cedilla
    ["\xc4\xab"] = "\xee", // i with macron
    ["\xc4\xbc"] = "\xef", // l-cedilla

    ["\xc5\xa1"] = "\xf0", // s with caron
    ["\xc5\x84"] = "\xf1", // n with acute
    ["\xc5\x86"] = "\xf2", // n-cedilla
    ["\xc3\xb3"] = "\xf3", // o with acute
    ["\xc5\x8d"] = "\xf4", // o with macron
    ["\xc3\xb5"] = "\xf5", // o with tilde
    ["\xc3\xb6"] = "\xf6", // o with diaeresis
    ["\xc3\xb7"] = "\xf7", // divison sign
    ["\xc5\xb3"] = "\xf8", // u with ogonek
    ["\xc5\x82"] = "\xf9", // l with stroke
    ["\xc5\x9b"] = "\xfa", // s with acute
    ["\xc5\xab"] = "\xfb", // u with macron
    ["\xc3\xbc"] = "\xfc", // u with diaeresis
    ["\xc5\xbc"] = "\xfd", // z with dot above
    ["\xc5\xbe"] = "\xfe", // z with caron
    ["\xcb\x99"] = "\xff", // dot above
}

local function utf8_to_windows1257(text)
{
    local result = ""

    for (local i = 0, charSize = 0, textLen = text.len(); i != textLen; i += charSize)
    {
        local char = text[i]

        if (char < 0)
            char += 256

        if(char < 128)
            charSize = 1
        else
        {
            if(char < 224)
                charSize = 2
            else if(char < 240)
                charSize = 3
            else if(char < 248)
                charSize = 4
            else if(char == 252)
                charSize = 5
            else
                charSize = 6
        }

        local charBytes = text.slice(i, i + charSize)

        if (charSize == 1)
            result += charBytes
        else if (charBytes in utf8_windows1257_map)
            result += utf8_windows1257_map[charBytes]
        else
            result += "?"
    }

    return result
}