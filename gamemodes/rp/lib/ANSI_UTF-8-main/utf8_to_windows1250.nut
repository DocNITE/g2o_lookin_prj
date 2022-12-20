local utf8_windows1250_map =
{
    ["\xe2\x82\xac"] = "\x80", // euro sign
    ["\xe2\x80\x9a"] = "\x82", // lower quotation mark
    ["\xe2\x80\x9e"] = "\x84", // lower quotation marks
    ["\xe2\x80\xa6"] = "\x85", // ellipsis
    ["\xe2\x80\xa0"] = "\x86", // dagger
    ["\xe2\x80\xa1"] = "\x87", // double dagger
    ["\xe2\x80\xb0"] = "\x89", // per mille
    ["\xc5\xa0"] = "\x8a", // S with caron
    ["\xe2\x80\xb9"] = "\x8b", // left guillemet
    ["\xc5\x9a"] = "\x8c", // S with acute
    ["\xc5\xa4"] = "\x8d", // T with caron
    ["\xc5\xbd"] = "\x8e", // Z with caron
    ["\xc5\xb9"] = "\x8f", // Z with acute

    ["\xe2\x80\x98"] = "\x91", // upper quotation mark (opening)
    ["\xe2\x80\x99"] = "\x92", // upper quotation mark (closing)
    ["\xe2\x80\x9c"] = "\x93", // upper quotation marks (opening)
    ["\xe2\x80\x9d"] = "\x94", // upper quotation marks (closing)
    ["\xe2\x80\xa2"] = "\x95", // bullet sign
    ["\xe2\x80\x93"] = "\x96", // en dash
    ["\xe2\x80\x94"] = "\x97", // em dash
    ["\xe2\x84\xa2"] = "\x99", // trademark sign
    ["\xc5\xa1"] = "\x9a", // s with caron
    ["\xe2\x80\xba"] = "\x9b", // right guillemet
    ["\xc5\x9b"] = "\x9c", // s with acute
    ["\xc5\xa5"] = "\x9d", // t with caron
    ["\xc5\xbe"] = "\x9e", // z with caron
    ["\xc5\xba"] = "\x9f", // z with acute

    ["\x20"] = "\xa0", // NBSP
    ["\xcb\x87"] = "\xa1", // caron
    ["\xcb\x98"] = "\xa2", // breve
    ["\xc5\x81"] = "\xa3", // L with stroke
    ["\xc2\xa4"] = "\xa4", // currency sign
    ["\xc4\x84"] = "\xa5", // A with ogonek
    ["\xc2\xa6"] = "\xa6", // vertical bar
    ["\xc2\xa7"] = "\xa7", // section sign
    ["\xc2\xa8"] = "\xa8", // diaeresis
    ["\xc2\xa9"] = "\xa9", // copyright sign
    ["\xc5\x9e"] = "\xaa", // S-cedilla
    ["\xc2\xab"] = "\xab", // left guillemets
    ["\xc2\xac"] = "\xac", // negation
    ["\xc2\xad"] = "\xad", // soft hyphen
    ["\xc2\xae"] = "\xae", // registered trademark sign
    ["\xc5\xbb"] = "\xaf", // Z with dot above

    ["\xc2\xb0"] = "\xb0", // degree sign
    ["\xc2\xb1"] = "\xb1", // plus-minus sign
    ["\xcb\x9b"] = "\xb2", // ogonek
    ["\xc5\x82"] = "\xb3", // l with stroke
    ["\xc2\xb4"] = "\xb4", // acute accent
    ["\xc2\xb5"] = "\xb5", // Mu letter
    ["\xc2\xb6"] = "\xb6", // pilcrow
    ["\xc2\xb7"] = "\xb7", // middle dot
    ["\xc2\xb8"] = "\xb8", // cedilla
    ["\xc4\x85"] = "\xb9", // a with ogonek
    ["\xc5\x9f"] = "\xba", // s-cedilla
    ["\xc2\xbb"] = "\xbb", // right guillemets
    ["\xc4\xbd"] = "\xbc", // Lj-
    ["\xcb\x9d"] = "\xbd", // double acute accent
    ["\xc4\xbe"] = "\xbe", // lj-
    ["\xc5\xbc"] = "\xbf", // z with dot above

    ["\xc5\x94"] = "\xc0", // R with acute
    ["\xc3\x81"] = "\xc1", // A with acute
    ["\xc3\x82"] = "\xc2", // A-circumflex
    ["\xc4\x82"] = "\xc3", // A-breve
    ["\xc3\x84"] = "\xc4", // A with diaeresis
    ["\xc4\xb9"] = "\xc5", // L with acute
    ["\xc4\x86"] = "\xc6", // C with acute
    ["\xc3\x87"] = "\xc7", // C-cedilla
    ["\xc4\x8c"] = "\xc8", // C with caron
    ["\xc3\x89"] = "\xc9", // C with acute
    ["\xc4\x98"] = "\xca", // E with ogonek
    ["\xc3\x8b"] = "\xcb", // E with diaeresis
    ["\xc3\x8b"] = "\xcc", // E with caron
    ["\xc3\x8d"] = "\xcd", // I with acute
    ["\xc3\x8e"] = "\xce", // I-circumflex
    ["\xc4\x8e"] = "\xcf", // D with caron

    ["\xc4\x90"] = "\xd0", // crossed D
    ["\xc5\x83"] = "\xd1", // N with acute
    ["\xc5\x87"] = "\xd2", // N with caron
    ["\xc3\x93"] = "\xd3", // O with acute
    ["\xc3\x94"] = "\xd4", // O-circumflex
    ["\xc5\x90"] = "\xd5", // O with dobule accute
    ["\xc3\x96"] = "\xd6", // O with diaeresis
    ["\xc3\x97"] = "\xd7", // multiplication sign
    ["\xc5\x98"] = "\xd8", // R with caron
    ["\xc5\xae"] = "\xd9", // U with diacritic
    ["\xc3\x9a"] = "\xda", // U with acute
    ["\xc5\xb0"] = "\xdb", // U with double accent
    ["\xc3\x9c"] = "\xdc", // U with diaeresis
    ["\xc3\x9d"] = "\xdd", // Y with acute
    ["\xc5\xa2"] = "\xdf", // T-cedilla

    ["\xc5\x95"] = "\xe0", // r with acute
    ["\xc3\xa1"] = "\xe1", // a with acute
    ["\xc3\xa2"] = "\xe2", // a-circumflex
    ["\xc4\x83"] = "\xe3", // a-breve
    ["\xc3\xa4"] = "\xe4", // a with diaeresis
    ["\xc4\xba"] = "\xe5", // l with acute
    ["\xc4\x87"] = "\xe6", // c with acute
    ["\xc3\xa7"] = "\xe7", // c-cedilla
    ["\xc4\x8d"] = "\xe8", // c with caron
    ["\xc3\xa9"] = "\xe9", // c with acute
    ["\xc4\x99"] = "\xea", // e with ogonek
    ["\xc3\xab"] = "\xeb", // e with diaeresis
    ["\xc4\x9b"] = "\xec", // e with caron
    ["\xc3\xad"] = "\xed", // i with acute
    ["\xc3\xae"] = "\xee", // i-circumflex
    ["\xc4\x8f"] = "\xef", // d with caron

    ["\xc4\x91"] = "\xf0", // crossed d
    ["\xc5\x84"] = "\xf1", // n with acute
    ["\xc5\x88"] = "\xf2", // n with caron
    ["\xc3\xb3"] = "\xf3", // o with acute
    ["\xc3\xb4"] = "\xf4", // o-circumflex
    ["\xc5\x91"] = "\xf5", // o with double accent
    ["\xc3\xb6"] = "\xf6", // o with diaeresis
    ["\xc3\xb7"] = "\xf7", // division sign
    ["\xc5\x99"] = "\xf8", // r with caron
    ["\xc5\xaf"] = "\xf9", // u with diacritic
    ["\xc3\xba"] = "\xfa", // u with acute
    ["\xc5\xb1"] = "\xfb", // u with double accent
    ["\xc3\xbc"] = "\xfc", // u with diaeresis
    ["\xc3\xbd"] = "\xfd", // y with acute
    ["\xc5\xa3"] = "\xfe", // t-cedilla
    ["\xcb\x99"] = "\xff", // diactric dot
}

local function utf8_to_windows1250(text)
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
        else if (charBytes in utf8_windows1250_map)
            result += utf8_windows1250_map[charBytes]
        else
            result += "?"
    }

    return result
}