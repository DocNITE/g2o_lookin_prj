local utf8_windows1258_map =
{
    ["\xe2\x82\xac"] = "\x80", // euro sign
    ["\xe2\x80\x9a"] = "\x82", // lower quotation mark
    ["\xc6\x92"] = "\x83", // letter F with a hook
    ["\xe2\x80\x9e"] = "\x84", // lower quotation marks
    ["\xe2\x80\xa6"] = "\x85", // ellipsis
    ["\xe2\x80\xa0"] = "\x86", // dagger
    ["\xe2\x80\xa1"] = "\x87", // double dagger
    ["\xcb\x86"] = "\x88", // circumflex
    ["\xe2\x80\xb0"] = "\x89", // per mille
    ["\xe2\x80\xb9"] = "\x8b", // left guillemet
    ["\xc5\x92"] = "\x8c", // ligature of O and E

    ["\xe2\x80\x98"] = "\x91", // upper quotation mark (opening)
    ["\xe2\x80\x99"] = "\x92", // upper quotation mark (closing)
    ["\xe2\x80\x9c"] = "\x93", // upper quotation marks (opening)
    ["\xe2\x80\x9d"] = "\x94", // upper quotation marks (closing)
    ["\xe2\x80\xa2"] = "\x95", // bullet sign
    ["\xe2\x80\x93"] = "\x96", // en dash
    ["\xe2\x80\x94"] = "\x97", // em dash
    ["\xcb\x9c"] = "\x98", // tilde
    ["\xe2\x84\xa2"] = "\x99", // trademark sign
    ["\xe2\x80\xba"] = "\x9b", // right guillemet
    ["\xc5\x93"] = "\x9c", // ligature of o and e
    ["\xc5\xb8"] = "\x9f", // Lj-

    ["\x20"] = "\xa0", // NBSP
    ["\xc2\xa1"] = "\xa1", // inverted exclamation mark
    ["\xc2\xa2"] = "\xa2", // cent unit
    ["\xc2\xa3"] = "\xa3", // pound sterling unit
    ["\xc2\xa4"] = "\xa4", // currency sign
    ["\xc2\xa5"] = "\xa5", // jen unit
    ["\xc2\xa6"] = "\xa6", // vertical bar
    ["\xc2\xa7"] = "\xa7", // section sign
    ["\xc2\xa8"] = "\xa8", // diaeresis
    ["\xc2\xa9"] = "\xa9", // copyright sign
    ["\xc2\xaa"] = "\xaa", // feminine ordinal indicator
    ["\xc2\xab"] = "\xab", // left guillemets
    ["\xc2\xac"] = "\xac", // negation
    ["\xc2\xad"] = "\xad", // soft hyphen
    ["\xc2\xae"] = "\xae", // registered trademark sign
    ["\xc2\xaf"] = "\xaf", // macron

    ["\xc2\xb0"] = "\xb0", // degree sign
    ["\xc2\xb1"] = "\xb1", // plus-minus sign
    ["\xc2\xb2"] = "\xb2", // square function
    ["\xc2\xb3"] = "\xb3", // cube function
    ["\xc2\xb4"] = "\xb4", // acute accent
    ["\xc2\xb5"] = "\xb5", // Mu letter
    ["\xc2\xb6"] = "\xb6", // pilcrow
    ["\xc2\xb7"] = "\xb7", // middle dot
    ["\xc2\xb8"] = "\xb8", // cedilla
    ["\xc2\xb9"] = "\xb9", // superscript
    ["\xc2\xba"] = "\xba", // masculine ordinal indicator
    ["\xc2\xbb"] = "\xbb", // right guillemets
    ["\xc2\xbc"] = "\xbc", // one quarter
    ["\xc2\xbd"] = "\xbd", // one half
    ["\xc2\xbe"] = "\xbe", // three quarter
    ["\xc2\xbf"] = "\xbf", // inverted question mark

    ["\xc3\x80"] = "\xc0", // A with grave
    ["\xc3\x81"] = "\xc1", // A with acute
    ["\xc3\x82"] = "\xc2", // A with circumflex
    ["\xc4\x82"] = "\xc3", // A with breve
    ["\xc3\x84"] = "\xc4", // A with diaeresis
    ["\xc3\x85"] = "\xc5", // A with overring
    ["\xc3\x86"] = "\xc6", // ligature of A and E
    ["\xc3\x87"] = "\xc7", // C-cedilla
    ["\xc3\x88"] = "\xc8", // E with grave
    ["\xc3\x89"] = "\xc9", // E with acute
    ["\xc3\x8a"] = "\xca", // E with circumflex
    ["\xc3\x8b"] = "\xcb", // E with diaeresis
    ["\xe2\x97\x8c\xcc\x80"] = "\xcc", // grave accent
    ["\xc3\x8d"] = "\xcd", // I with acute
    ["\xc3\x8e"] = "\xce", // I with circumflex
    ["\xc3\x8f"] = "\xcf", // I with diaeresis

    ["\xc4\x90"] = "\xd0", // D with stroke
    ["\xc3\x91"] = "\xd1", // N with tilde
    ["\xe2\x97\x8c\xcc\x89"] = "\xd2", // hook above
    ["\xc3\x93"] = "\xd3", // O with acute
    ["\xc3\x94"] = "\xd4", // O with circumflex
    ["\xe2\x97\x8c\xcc\x89"] = "\xd5", // O with horn
    ["\xc3\x96"] = "\xd6", // O with diaeresis
    ["\xc3\x97"] = "\xd7", // multiplication sign
    ["\xc3\x98"] = "\xd8", // O with slash
    ["\xc3\x99"] = "\xd9", // U with grave
    ["\xc3\x9a"] = "\xda", // U with acute
    ["\xc3\x9b"] = "\xdb", // U with circumflex
    ["\xc3\x9c"] = "\xdc", // U with diaeresis
    ["\xc6\xaf"] = "\xdd", // U with horn
    ["\xe2\x97\x8c\xcc\x83"] = "\xde", // tilde above
    ["\xc3\x9f"] = "\xdf", // eszett

    ["\xc3\xa0"] = "\xe0", // a with grave
    ["\xc3\xa1"] = "\xe1", // a with acute
    ["\xc3\xa2"] = "\xe2", // a with circumflex
    ["\xc4\x83"] = "\xe3", // a with breve
    ["\xc3\xa4"] = "\xe4", // a with diaeresis
    ["\xc3\xa5"] = "\xe5", // a with overring
    ["\xc3\xa6"] = "\xe6", // ligature of a and e
    ["\xc3\xa7"] = "\xe7", // c-cedilla
    ["\xc3\xa8"] = "\xe8", // e with grave
    ["\xc3\xa9"] = "\xe9", // e with acute
    ["\xc3\xaa"] = "\xea", // e with circumflex
    ["\xc3\xab"] = "\xeb", // e with diaeresis
    ["\xe2\x97\x8c\xcc\x81"] = "\xec", // acute accent
    ["\xc3\xad"] = "\xed", // i with acute
    ["\xc3\xae"] = "\xee", // i with circumflex
    ["\xc3\xaf"] = "\xef", // i with diaeresis

    ["\xc4\x91"] = "\xf0", // d with stroke
    ["\xc3\xb1"] = "\xf1", // n with tilde
    ["\xe2\x97\x8c\xcc\xa3"] = "\xf2", // dot below
    ["\xc3\xb3"] = "\xf3", // o with acute
    ["\xc3\xb4"] = "\xf4", // o with circumflex
    ["\xc6\xa1"] = "\xf5", // o with horn
    ["\xc3\xb6"] = "\xf6", // o with diaeresis
    ["\xc3\xb7"] = "\xf7", // divison sign
    ["\xc3\xb8"] = "\xf8", // o with slash
    ["\xc3\xb9"] = "\xf9", // u with grave
    ["\xc3\xba"] = "\xfa", // u with acute
    ["\xc3\xbb"] = "\xfb", // u with circumflex
    ["\xc3\xbc"] = "\xfc", // u with diaeresis
    ["\xc6\xb0"] = "\xfd", // u with horn
    ["\xe2\x82\ab"] = "\xfe", // dong sign
    ["\xc3\xbf"] = "\xff", // y with diaeresis
}

local function utf8_to_windows1258(text)
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
        else if (charBytes in utf8_windows1258_map)
            result += utf8_windows1258_map[charBytes]
        else
            result += "?"
    }

    return result
}