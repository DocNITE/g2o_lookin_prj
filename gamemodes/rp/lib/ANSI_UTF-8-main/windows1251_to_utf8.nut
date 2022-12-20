local windows1251_utf8_map =
{
    [0x80] = "\xd0\x82", // cyrillic capital letter dje
    [0x81] = "\xd0\x83", // cyrillic capital letter gje
    [0x82] = "\xe2\x80\x9a", // quotation mark
    [0x83] = "\xd1\x93", // cyrillic small letter gje
    [0x84] = "\xe2\x80\x9e", // double quotation mark
    [0x85] = "\xe2\x80\xa6", // ellipsis
    [0x86] = "\xe2\x80\xa0", // dagger
    [0x87] = "\xe2\x80\xa1", // double dagger
    [0x88] = "\xe2\x82\xac", // euro sign
    [0x89] = "\xe2\x80\xb0", // per mille
    [0x8a] = "\xd0\x89", // cyrillic capital letter lje
    [0x8b] = "\xe2\x80\xb9", // left guillemet
    [0x8c] = "\xd0\x8a", // cyrillic capital letter nje
    [0x8d] = "\xd0\x8c", // cyrillic capital letter kje
    [0x8e] = "\xd0\x8b", // cyrillic capital letter tshe
    [0x8f] = "\xd0\x8f", // cyrillic capital letter dzhe

    [0x90] = "\xd0\x8f", // cyrillic small letter dje
    [0x91] = "\xd0\x8f", // cyrillic small letter dje
    [0x92] = "\xe2\x80\x98", // upper quotation mark (opening)
    [0x93] = "\xe2\x80\x99", // upper quotation mark (closing)
    [0x94] = "\xe2\x80\x9c", // upper quotation marks (opening)
    [0x95] = "\xe2\x80\x9d", // upper quotation marks (closing)
    [0x96] = "\xe2\x80\xa2", // bullet sign
    [0x97] = "\xe2\x80\x93", // en dash
    [0x98] = "\xe2\x80\x94", // em dash
    [0x99] = "\xe2\x84\xa2", // trademark sign
    [0x9a] = "\xd1\x99", // cyrillic small letter lje
    [0x9b] = "\xe2\x80\xba", // right guillemet
    [0x9c] = "\xd1\x9a", // cyrillic small letter nje
    [0x9d] = "\xd1\x9c", // cyrillic small letter kje
    [0x9e] = "\xd1\x9b", // cyrillic small letter the
    [0x9f] = "\xd1\x9f", // cyrillic small letter dzhe

    [0xa0] = "\x20", // NBSP
    [0xa1] = "\xd0\x8e", // cyrillic capital letter short u
    [0xa2] = "\xd1\x9e", // cyrillic small letter short u
    [0xa3] = "\xd0\x88", // cyrillic capital letter je
    [0xa4] = "\xc2\xa4", // currency sign
    [0xa5] = "\xd2\x90", // cyrillic capital letter ghe with upturn
    [0xa6] = "\xc2\xa6", // vertical bar
    [0xa7] = "\xc2\xa7", // section sign
    [0xa8] = "\xd0\x81", // cyrillic capital letter io
    [0xa9] = "\xc2\xa9", // copyright sign
    [0xaa] = "\xd0\x84", // cyrillic capital ukrainian ie
    [0xab] = "\xc2\xab", // left guillemets
    [0xac] = "\xc2\xac", // negation
    [0xad] = "\xc2\xad", // soft hyphen
    [0xae] = "\xc2\xae", // registered trademark sign
    [0xaf] = "\xd0\x87", // cyrillic capital ukrainian yi

    [0xb0] = "\xc2\xb0", // degree sign
    [0xb1] = "\xc2\xb1", // plus-minus sign
    [0xb2] = "\xd0\x86", // dotted I
    [0xb3] = "\xd1\x96", // dotted i
    [0xb4] = "\xd2\x91", // cyrillic small letter ghe with upturn
    [0xb5] = "\xc2\xb5", // Mu letter
    [0xb6] = "\xc2\xb6", // pilcrow
    [0xb7] = "\xc2\xb7", // middle dot
    [0xb8] = "\xd1\x91", // cyrillic small letter io
    [0xb9] = "\xe2\x84\x96", // numero sign
    [0xba] = "\xd1\x94", // cyrillic small ukrainian ie
    [0xbb] = "\xc2\xbb", // right guillemets
    [0xbc] = "\xd1\x98", // cyrillic small letter je
    [0xbd] = "\xd0\x85", // cyrillic capital letter dze
    [0xbe] = "\xd1\x95", // cyrillic small letter dze
    [0xbf] = "\xd1\x97", // cyrillic small letter yi

    [0xc0] = "\xd0\x90", // cyrillic capital letter a
    [0xc1] = "\xd0\x91", // cyrillic capital letter be
    [0xc2] = "\xd0\x92", // cyrillic capital letter ve
    [0xc3] = "\xd0\x93", // cyrillic capital letter ghe
    [0xc4] = "\xd0\x94", // cyrillic capital letter de
    [0xc5] = "\xd0\x95", // cyrillic capital letter ie
    [0xc6] = "\xd0\x96", // cyrillic capital letter zhe
    [0xc7] = "\xd0\x97", // cyrillic capital letter ze
    [0xc8] = "\xd0\x98", // cyrillic capital letter i
    [0xc9] = "\xd0\x99", // cyrillic capital letter short i
    [0xca] = "\xd0\x9A", // cyrillic capital letter ka
    [0xcb] = "\xd0\x9B", // cyrillic capital letter el
    [0xcc] = "\xd0\x9c", // cyrillic capital letter em
    [0xcd] = "\xd0\x9d", // cyrillic capital letter en
    [0xce] = "\xd0\x9e", // cyrillic capital letter o
    [0xcf] = "\xd0\x9f", // cyrillic capital letter pe

    [0xd0] = "\xd0\xa0", // cyrillic capital letter er
    [0xd1] = "\xd0\xa1", // cyrillic capital letter es
    [0xd2] = "\xd0\xa2", // cyrillic capital letter te
    [0xd3] = "\xd0\xa3", // cyrillic capital letter u
    [0xd4] = "\xd0\xa4", // cyrillic capital letter ef
    [0xd5] = "\xd0\xa5", // cyrillic capital letter ha
    [0xd6] = "\xd0\xa6", // cyrillic capital letter tse
    [0xd7] = "\xd0\xa7", // cyrillic capital letter che
    [0xd8] = "\xd0\xa8", // cyrillic capital letter sha
    [0xd9] = "\xd0\xa9", // cyrillic capital letter shcha
    [0xda] = "\xd0\xaa", // cyrillic capital letter hard sign
    [0xdb] = "\xd0\xab", // cyrillic capital letter yeru
    [0xdc] = "\xd0\xac", // cyrillic capital letter soft sign
    [0xdd] = "\xd0\xad", // cyrillic capital letter e
    [0xde] = "\xd0\xae", // cyrillic capital letter yu
    [0xdf] = "\xd0\xaf", // cyrillic capital letter ya

    [0xe0] = "\xd0\xb0", // cyrillic small letter a
    [0xe1] = "\xd0\xb1", // cyrillic small letter be
    [0xe2] = "\xd0\xb2", // cyrillic small letter ve
    [0xe3] = "\xd0\xb3", // cyrillic small letter ghe
    [0xe4] = "\xd0\xb4", // cyrillic small letter de
    [0xe5] = "\xd0\xb5", // cyrillic small letter ie
    [0xe6] = "\xd0\xb6", // cyrillic small letter zhe
    [0xe7] = "\xd0\xb7", // cyrillic small letter ze
    [0xe8] = "\xd0\xb8", // cyrillic small letter i
    [0xe9] = "\xd0\xb9", // cyrillic small letter short i
    [0xea] = "\xd0\xba", // cyrillic small letter ka
    [0xeb] = "\xd0\xbb", // cyrillic small letter el
    [0xec] = "\xd0\xbc", // cyrillic small letter em
    [0xed] = "\xd0\xbd", // cyrillic small letter en
    [0xee] = "\xd0\xbe", // cyrillic small letter o
    [0xef] = "\xd0\xbf", // cyrillic small letter pe

    [0xf0] = "\xd1\x80", // cyrillic small letter er
    [0xf1] = "\xd1\x81", // cyrillic small letter es
    [0xf2] = "\xd1\x82", // cyrillic small letter te
    [0xf3] = "\xd1\x83", // cyrillic small letter u
    [0xf4] = "\xd1\x84", // cyrillic small letter ef
    [0xf5] = "\xd1\x85", // cyrillic small letter ha
    [0xf6] = "\xd1\x86", // cyrillic small letter tse
    [0xf7] = "\xd1\x87", // cyrillic small letter che
    [0xf8] = "\xd1\x88", // cyrillic small letter sha
    [0xf9] = "\xd1\x89", // cyrillic small letter shcha
    [0xfa] = "\xd1\x8a", // cyrillic small letter hard sign
    [0xfb] = "\xd1\x8b", // cyrillic small letter yeru
    [0xfc] = "\xd1\x8c", // cyrillic small letter soft sign
    [0xfd] = "\xd1\x8d", // cyrillic small letter e
    [0xfe] = "\xd1\x8e", // cyrillic small letter yu
    [0xff] = "\xd1\x8f", // cyrillic small letter ya
}

function windows1251_to_utf8(text)
{
    local result = ""

    foreach (idx, charId in text)
    {
        charId += 256

        if (charId in windows1251_utf8_map)
            result += windows1251_utf8_map[charId]
        else
            result += text.slice(idx, idx + 1)
    }

    return result
}
