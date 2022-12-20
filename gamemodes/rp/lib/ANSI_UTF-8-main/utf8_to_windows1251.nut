local utf8_windows1251_map =
{
    ["\xd0\x82"] = "\x80", // cyrillic capital letter dje
    ["\xd0\x83"] = "\x81", // cyrillic capital letter gje
    ["\xe2\x80\x9a"] = "\x82", // quotation mark
    ["\xd1\x93"] = "\x83", // cyrillic small letter gje
    ["\xe2\x80\x9e"] = "\x84", // double quotation mark
    ["\xe2\x80\xa6"] = "\x85", // ellipsis
    ["\xe2\x80\xa0"] = "\x86", // dagger
    ["\xe2\x80\xa1"] = "\x87", // double dagger
    ["\xe2\x82\xac"] = "\x88", // euro sign
    ["\xe2\x80\xb0"] = "\x89", // per mille
    ["\xd0\x89"] = "\x8a", // cyrillic capital letter lje
    ["\xe2\x80\xb9"] = "\x8b", // left guillemet
    ["\xd0\x8a"] = "\x8c", // cyrillic capital letter nje
    ["\xd0\x8c"] = "\x8d", // cyrillic capital letter kje
    ["\xd0\x8b"] = "\x8e", // cyrillic capital letter tshe
    ["\xd0\x8f"] = "\x8f", // cyrillic capital letter dzhe

    ["\xd0\x8f"] = "\x90", // cyrillic small letter dje
    ["\xd0\x8f"] = "\x91", // cyrillic small letter dje
    ["\xe2\x80\x98"] = "\x92", // upper quotation mark (opening)
    ["\xe2\x80\x99"] = "\x93", // upper quotation mark (closing)
    ["\xe2\x80\x9c"] = "\x94", // upper quotation marks (opening)
    ["\xe2\x80\x9d"] = "\x95", // upper quotation marks (closing)
    ["\xe2\x80\xa2"] = "\x96", // bullet sign
    ["\xe2\x80\x93"] = "\x97", // en dash
    ["\xe2\x80\x94"] = "\x98", // em dash
    ["\xe2\x84\xa2"] = "\x99", // trademark sign
    ["\xd1\x99"] = "\x9a", // cyrillic small letter lje
    ["\xe2\x80\xba"] = "\x9b", // right guillemet
    ["\xd1\x9a"] = "\x9c", // cyrillic small letter nje
    ["\xd1\x9c"] = "\x9d", // cyrillic small letter kje
    ["\xd1\x9b"] = "\x9e", // cyrillic small letter the
    ["\xd1\x9f"] = "\x9f", // cyrillic small letter dzhe

    ["\x20"] = "\xa0", // NBSP
    ["\xd0\x8e"] = "\xa1", // cyrillic capital letter short u
    ["\xd1\x9e"] = "\xa2", // cyrillic small letter short u
    ["\xd0\x88"] = "\xa3", // cyrillic capital letter je
    ["\xc2\xa4"] = "\xa4", // currency sign
    ["\xd2\x90"] = "\xa5", // cyrillic capital letter ghe with upturn
    ["\xc2\xa6"] = "\xa6", // vertical bar
    ["\xc2\xa7"] = "\xa7", // section sign
    ["\xd0\x81"] = "\xa8", // cyrillic capital letter io
    ["\xc2\xa9"] = "\xa9", // copyright sign
    ["\xd0\x84"] = "\xaa", // cyrillic capital ukrainian ie
    ["\xc2\xab"] = "\xab", // left guillemets
    ["\xc2\xac"] = "\xac", // negation
    ["\xc2\xad"] = "\xad", // soft hyphen
    ["\xc2\xae"] = "\xae", // registered trademark sign
    ["\xd0\x87"] = "\xaf", // cyrillic capital ukrainian yi

    ["\xc2\xb0"] = "\xb0", // degree sign
    ["\xc2\xb1"] = "\xb1", // plus-minus sign
    ["\xd0\x86"] = "\xb2", // dotted I
    ["\xd1\x96"] = "\xb3", // dotted i
    ["\xd2\x91"] = "\xb4", // cyrillic small letter ghe with upturn
    ["\xc2\xb5"] = "\xb5", // Mu letter
    ["\xc2\xb6"] = "\xb6", // pilcrow
    ["\xc2\xb7"] = "\xb7", // middle dot
    ["\xd1\x91"] = "\xb8", // cyrillic small letter io
    ["\xe2\x84\x96"] = "\xb9", // numero sign
    ["\xd1\x94"] = "\xba", // cyrillic small ukrainian ie
    ["\xc2\xbb"] = "\xbb", // right guillemets
    ["\xd1\x98"] = "\xbc", // cyrillic small letter je
    ["\xd0\x85"] = "\xbd", // cyrillic capital letter dze
    ["\xd1\x95"] = "\xbe", // cyrillic small letter dze
    ["\xd1\x97"] = "\xbf", // cyrillic small letter yi

    ["\xd0\x90"] = "\xc0", // cyrillic capital letter a
    ["\xd0\x91"] = "\xc1", // cyrillic capital letter be
    ["\xd0\x92"] = "\xc2", // cyrillic capital letter ve
    ["\xd0\x93"] = "\xc3", // cyrillic capital letter ghe
    ["\xd0\x94"] = "\xc4", // cyrillic capital letter de
    ["\xd0\x95"] = "\xc5", // cyrillic capital letter ie
    ["\xd0\x96"] = "\xc6", // cyrillic capital letter zhe
    ["\xd0\x97"] = "\xc7", // cyrillic capital letter ze
    ["\xd0\x98"] = "\xc8", // cyrillic capital letter i
    ["\xd0\x99"] = "\xc9", // cyrillic capital letter short i
    ["\xd0\x9A"] = "\xca", // cyrillic capital letter ka
    ["\xd0\x9B"] = "\xcb", // cyrillic capital letter el
    ["\xd0\x9c"] = "\xcc", // cyrillic capital letter em
    ["\xd0\x9d"] = "\xcd", // cyrillic capital letter en
    ["\xd0\x9e"] = "\xce", // cyrillic capital letter o
    ["\xd0\x9f"] = "\xcf", // cyrillic capital letter pe

    ["\xd0\xa0"] = "\xd0", // cyrillic capital letter er
    ["\xd0\xa1"] = "\xd1", // cyrillic capital letter es
    ["\xd0\xa2"] = "\xd2", // cyrillic capital letter te
    ["\xd0\xa3"] = "\xd3", // cyrillic capital letter u
    ["\xd0\xa4"] = "\xd4", // cyrillic capital letter ef
    ["\xd0\xa5"] = "\xd5", // cyrillic capital letter ha
    ["\xd0\xa6"] = "\xd6", // cyrillic capital letter tse
    ["\xd0\xa7"] = "\xd7", // cyrillic capital letter che
    ["\xd0\xa8"] = "\xd8", // cyrillic capital letter sha
    ["\xd0\xa9"] = "\xd9", // cyrillic capital letter shcha
    ["\xd0\xaa"] = "\xda", // cyrillic capital letter hard sign
    ["\xd0\xab"] = "\xdb", // cyrillic capital letter yeru
    ["\xd0\xac"] = "\xdc", // cyrillic capital letter soft sign
    ["\xd0\xad"] = "\xdd", // cyrillic capital letter e
    ["\xd0\xae"] = "\xde", // cyrillic capital letter yu
    ["\xd0\xaf"] = "\xdf", // cyrillic capital letter ya

    ["\xd0\xb0"] = "\xe0", // cyrillic small letter a
    ["\xd0\xb1"] = "\xe1", // cyrillic small letter be
    ["\xd0\xb2"] = "\xe2", // cyrillic small letter ve
    ["\xd0\xb3"] = "\xe3", // cyrillic small letter ghe
    ["\xd0\xb4"] = "\xe4", // cyrillic small letter de
    ["\xd0\xb5"] = "\xe5", // cyrillic small letter ie
    ["\xd0\xb6"] = "\xe6", // cyrillic small letter zhe
    ["\xd0\xb7"] = "\xe7", // cyrillic small letter ze
    ["\xd0\xb8"] = "\xe8", // cyrillic small letter i
    ["\xd0\xb9"] = "\xe9", // cyrillic small letter short i
    ["\xd0\xba"] = "\xea", // cyrillic small letter ka
    ["\xd0\xbb"] = "\xeb", // cyrillic small letter el
    ["\xd0\xbc"] = "\xec", // cyrillic small letter em
    ["\xd0\xbd"] = "\xed", // cyrillic small letter en
    ["\xd0\xbe"] = "\xee", // cyrillic small letter o
    ["\xd0\xbf"] = "\xef", // cyrillic small letter pe

    ["\xd1\x80"] = "\xf0", // cyrillic small letter er
    ["\xd1\x81"] = "\xf1", // cyrillic small letter es
    ["\xd1\x82"] = "\xf2", // cyrillic small letter te
    ["\xd1\x83"] = "\xf3", // cyrillic small letter u
    ["\xd1\x84"] = "\xf4", // cyrillic small letter ef
    ["\xd1\x85"] = "\xf5", // cyrillic small letter ha
    ["\xd1\x86"] = "\xf6", // cyrillic small letter tse
    ["\xd1\x87"] = "\xf7", // cyrillic small letter che
    ["\xd1\x88"] = "\xf8", // cyrillic small letter sha
    ["\xd1\x89"] = "\xf9", // cyrillic small letter shcha
    ["\xd1\x8a"] = "\xfa", // cyrillic small letter hard sign
    ["\xd1\x8b"] = "\xfb", // cyrillic small letter yeru
    ["\xd1\x8c"] = "\xfc", // cyrillic small letter soft sign
    ["\xd1\x8d"] = "\xfd", // cyrillic small letter e
    ["\xd1\x8e"] = "\xfe", // cyrillic small letter yu
    ["\xd1\x8f"] = "\xff", // cyrillic small letter ya
}

function utf8_to_windows1251(text)
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
        else if (charBytes in utf8_windows1251_map)
            result += utf8_windows1251_map[charBytes]
        else
            result += "?"
    }

    return result
}