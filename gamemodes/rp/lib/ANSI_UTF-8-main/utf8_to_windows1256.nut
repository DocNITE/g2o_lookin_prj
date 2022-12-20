local utf8_windows1256_map =
{
    ["\xe2\x82\xac"] = "\x80", // euro sign
    ["\xd9\xbe"] = "\x81", // pe
    ["\xe2\x80\x9a"] = "\x82", // lower quotation mark
    ["\xc6\x92"] = "\x83", // letter F with a hook
    ["\xe2\x80\x9e"] = "\x84", // lower quotation marks
    ["\xe2\x80\xa6"] = "\x85", // ellipsis
    ["\xe2\x80\xa0"] = "\x86", // dagger
    ["\xe2\x80\xa1"] = "\x87", // double dagger
    ["\xcb\x86"] = "\x88", // circumflex
    ["\xe2\x80\xb0"] = "\x89", // per mille
    ["\xd9\xb9"] = "\x8a", // te
    ["\xe2\x80\xb9"] = "\x8b", // left guillemet
    ["\xc5\x92"] = "\x8c", // ligature of O and E
    ["\xda\x86"] = "\x8d", // che
    ["\xda\x98"] = "\x8e", // jeh
    ["\xda\x88"] = "\x8f", // ddal

    ["\xda\xaf"] = "\x90", // gaf
    ["\xe2\x80\x98"] = "\x91", // upper quotation mark (opening)
    ["\xe2\x80\x99"] = "\x92", // upper quotation mark (closing)
    ["\xe2\x80\x9c"] = "\x93", // upper quotation marks (opening)
    ["\xe2\x80\x9d"] = "\x94", // upper quotation marks (closing)
    ["\xe2\x80\xa2"] = "\x95", // bullet sign
    ["\xe2\x80\x93"] = "\x96", // en dash
    ["\xe2\x80\x94"] = "\x97", // em dash
    ["\xda\xa9"] = "\x98", // kaph
    ["\xe2\x84\xa2"] = "\x99", // trademark sign
    ["\xda\x91"] = "\x9a", // rreh
    ["\xe2\x80\xba"] = "\x9b", // right guillemet
    ["\xc5\x93"] = "\x9c", // ligature of o and e
    ["\xe2\x80\x8c"] = "\x9d", // zero width non joiner
    ["\xe2\x80\x8d"] = "\x9e", // zero width joiner
    ["\xda\xba"] = "\x9f", // noon ghunna

    ["\x20"] = "\xa0", // NBSP
    ["\xd8\x8c"] = "\xa1", // arabic comma
    ["\xc2\xa2"] = "\xa2", // cent unit
    ["\xc2\xa3"] = "\xa3", // pound sterling unit
    ["\xc2\xa4"] = "\xa4", // currency sign
    ["\xc2\xa5"] = "\xa5", // jen unit
    ["\xc2\xa6"] = "\xa6", // vertical bar
    ["\xc2\xa7"] = "\xa7", // section sign
    ["\xc2\xa8"] = "\xa8", // diaeresis
    ["\xc2\xa9"] = "\xa9", // copyright sign
    ["\xda\xbe"] = "\xaa", // he
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
    ["\xd8\x9b"] = "\xba", // arabic semicolon
    ["\xc2\xbb"] = "\xbb", // right guillemets
    ["\xc2\xbc"] = "\xbc", // one quarter
    ["\xc2\xbd"] = "\xbd", // one half
    ["\xc2\xbe"] = "\xbe", // three quarter
    ["\xd8\x9f"] = "\xbf", // arabic question mark

    ["\xdb\x81"] = "\xc0", // gol he
    ["\xd8\xa1"] = "\xc1", // hamza
    ["\xd8\xa2"] = "\xc2", // alef with madda above
    ["\xd8\xa3"] = "\xc3", // alef with hamza above
    ["\xd8\xa4"] = "\xc4", // waw with hamza above
    ["\xd8\xa5"] = "\xc5", // alef with hamza below
    ["\xd8\xa6"] = "\xc6", // yeh with hamza above
    ["\xd8\xa7"] = "\xc7", // alef
    ["\xd8\xa8"] = "\xc8", // beh
    ["\xd8\xa9"] = "\xc9", // teh marbuta
    ["\xd8\xaa"] = "\xca", // teh
    ["\xd8\xab"] = "\xcb", // theh
    ["\xd8\xac"] = "\xcc", // jeem
    ["\xd8\xad"] = "\xcd", // hah
    ["\xd8\xae"] = "\xce", // khah
    ["\xd8\xaf"] = "\xcf", // dal

    ["\xd8\xb0"] = "\xd0", // thal
    ["\xd8\xb1"] = "\xd1", // reh
    ["\xd8\xb2"] = "\xd2", // zain
    ["\xd8\xb3"] = "\xd3", // seen
    ["\xd8\xb4"] = "\xd4", // sheen
    ["\xd8\xb5"] = "\xd5", // sad
    ["\xd8\xb6"] = "\xd6", // dad
    ["\xc3\x97"] = "\xd7", // multiplication sign
    ["\xd8\xb7"] = "\xd8", // tah
    ["\xd8\xb8"] = "\xd9", // zah
    ["\xd8\xb9"] = "\xda", // ain
    ["\xd8\xba"] = "\xdb", // ghain
    ["\xd9\x80"] = "\xdc", // tatweel
    ["\xd9\x81"] = "\xdd", // feh
    ["\xd9\x82"] = "\xde", // qaf
    ["\xd9\x83"] = "\xdf", // kaf

    ["\xc3\xa0"] = "\xe0", // a with grave
    ["\xd9\x84"] = "\xe1", // lam
    ["\xc3\xa2"] = "\xe2", // a with circumflex
    ["\xd9\x85"] = "\xe3", // meem
    ["\xd9\x86"] = "\xe4", // noon
    ["\xd9\x87"] = "\xe5", // heh
    ["\xd9\x88"] = "\xe6", // waw
    ["\xc3\xa7"] = "\xe7", // c-cedilla
    ["\xc3\xa8"] = "\xe8", // e with grave
    ["\xc3\xa9"] = "\xe9", // e with acute
    ["\xc3\xaa"] = "\xea", // e with circumflex
    ["\xc3\xab"] = "\xeb", // e with diaeresis
    ["\xd9\x89"] = "\xec", // alef maksura
    ["\xd9\x8a"] = "\xed", // yeh
    ["\xc3\xae"] = "\xee", // i with circumflex
    ["\xc3\xaf"] = "\xef", // i with diaeresis

    ["\xd9\x8b"] = "\xf0", // fathatan
    ["\xd9\x8c"] = "\xf1", // dammatan
    ["\xd9\x8d"] = "\xf2", // kasratan
    ["\xd9\x8e"] = "\xf3", // fatha
    ["\xc3\xb4"] = "\xf4", // o with circumflex
    ["\xd9\x8f"] = "\xf5", // damma
    ["\xd9\x90"] = "\xf6", // kasra
    ["\xc3\xb7"] = "\xf7", // divison sign
    ["\xd9\x91"] = "\xf8", // shadda
    ["\xc3\xb9"] = "\xf9", // u with grave
    ["\xd9\x92"] = "\xfa", // sukun
    ["\xc3\xbb"] = "\xfb", // u with circumflex
    ["\xc3\xbc"] = "\xfc", // u with diaeresis
    ["\xe2\x80\x8e"] = "\xfd", // left to right mark
    ["\xe2\x80\x8f"] = "\xfe", // right to left mark
    ["\xdb\x92"] = "\xff", // yeh barree
}

local function utf8_to_windows1256(text)
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
        else if (charBytes in utf8_windows1256_map)
            result += utf8_windows1256_map[charBytes]
        else
            result += "?"
    }

    return result
}