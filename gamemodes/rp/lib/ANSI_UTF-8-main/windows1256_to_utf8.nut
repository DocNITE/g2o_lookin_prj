local windows1256_utf8_map =
{
    [0x80] = "\xe2\x82\xac", // euro sign
    [0x81] = "\xd9\xbe", // pe
    [0x82] = "\xe2\x80\x9a", // lower quotation mark
    [0x83] = "\xc6\x92", // letter F with a hook
    [0x84] = "\xe2\x80\x9e", // lower quotation marks
    [0x85] = "\xe2\x80\xa6", // ellipsis
    [0x86] = "\xe2\x80\xa0", // dagger
    [0x87] = "\xe2\x80\xa1", // double dagger
    [0x88] = "\xcb\x86", // circumflex
    [0x89] = "\xe2\x80\xb0", // per mille
    [0x8a] = "\xd9\xb9", // te
    [0x8b] = "\xe2\x80\xb9", // left guillemet
    [0x8c] = "\xc5\x92", // ligature of O and E
    [0x8d] = "\xda\x86", // che
    [0x8e] = "\xda\x98", // jeh
    [0x8f] = "\xda\x88", // ddal

    [0x90] = "\xda\xaf", // gaf
    [0x91] = "\xe2\x80\x98", // upper quotation mark (opening)
    [0x92] = "\xe2\x80\x99", // upper quotation mark (closing)
    [0x93] = "\xe2\x80\x9c", // upper quotation marks (opening)
    [0x94] = "\xe2\x80\x9d", // upper quotation marks (closing)
    [0x95] = "\xe2\x80\xa2", // bullet sign
    [0x96] = "\xe2\x80\x93", // en dash
    [0x97] = "\xe2\x80\x94", // em dash
    [0x98] = "\xda\xa9", // kaph
    [0x99] = "\xe2\x84\xa2", // trademark sign
    [0x9a] = "\xda\x91", // rreh
    [0x9b] = "\xe2\x80\xba", // right guillemet
    [0x9c] = "\xc5\x93", // ligature of o and e
    [0x9d] = "\xe2\x80\x8c", // zero width non joiner
    [0x9e] = "\xe2\x80\x8d", // zero width joiner
    [0x9f] = "\xda\xba", // noon ghunna

    [0xa0] = "\x20", // NBSP
    [0xa1] = "\xd8\x8c", // arabic comma
    [0xa2] = "\xc2\xa2", // cent unit
    [0xa3] = "\xc2\xa3", // pound sterling unit
    [0xa4] = "\xc2\xa4", // currency sign
    [0xa5] = "\xc2\xa5", // jen unit
    [0xa6] = "\xc2\xa6", // vertical bar
    [0xa7] = "\xc2\xa7", // section sign
    [0xa8] = "\xc2\xa8", // diaeresis
    [0xa9] = "\xc2\xa9", // copyright sign
    [0xaa] = "\xda\xbe", // he
    [0xab] = "\xc2\xab", // left guillemets
    [0xac] = "\xc2\xac", // negation
    [0xad] = "\xc2\xad", // soft hyphen
    [0xae] = "\xc2\xae", // registered trademark sign
    [0xaf] = "\xc2\xaf", // macron

    [0xb0] = "\xc2\xb0", // degree sign
    [0xb1] = "\xc2\xb1", // plus-minus sign
    [0xb2] = "\xc2\xb2", // square function
    [0xb3] = "\xc2\xb3", // cube function
    [0xb4] = "\xc2\xb4", // acute accent
    [0xb5] = "\xc2\xb5", // Mu letter
    [0xb6] = "\xc2\xb6", // pilcrow
    [0xb7] = "\xc2\xb7", // middle dot
    [0xb8] = "\xc2\xb8", // cedilla
    [0xb9] = "\xc2\xb9", // superscript
    [0xba] = "\xd8\x9b", // arabic semicolon
    [0xbb] = "\xc2\xbb", // right guillemets
    [0xbc] = "\xc2\xbc", // one quarter
    [0xbd] = "\xc2\xbd", // one half
    [0xbe] = "\xc2\xbe", // three quarter
    [0xbf] = "\xd8\x9f", // arabic question mark

    [0xc0] = "\xdb\x81", // gol he
    [0xc1] = "\xd8\xa1", // hamza
    [0xc2] = "\xd8\xa2", // alef with madda above
    [0xc3] = "\xd8\xa3", // alef with hamza above
    [0xc4] = "\xd8\xa4", // waw with hamza above
    [0xc5] = "\xd8\xa5", // alef with hamza below
    [0xc6] = "\xd8\xa6", // yeh with hamza above
    [0xc7] = "\xd8\xa7", // alef
    [0xc8] = "\xd8\xa8", // beh
    [0xc9] = "\xd8\xa9", // teh marbuta
    [0xca] = "\xd8\xaa", // teh
    [0xcb] = "\xd8\xab", // theh
    [0xcc] = "\xd8\xac", // jeem
    [0xcd] = "\xd8\xad", // hah
    [0xce] = "\xd8\xae", // khah
    [0xcf] = "\xd8\xaf", // dal

    [0xd0] = "\xd8\xb0", // thal
    [0xd1] = "\xd8\xb1", // reh
    [0xd2] = "\xd8\xb2", // zain
    [0xd3] = "\xd8\xb3", // seen
    [0xd4] = "\xd8\xb4", // sheen
    [0xd5] = "\xd8\xb5", // sad
    [0xd6] = "\xd8\xb6", // dad
    [0xd7] = "\xc3\x97", // multiplication sign
    [0xd8] = "\xd8\xb7", // tah
    [0xd9] = "\xd8\xb8", // zah
    [0xda] = "\xd8\xb9", // ain
    [0xdb] = "\xd8\xba", // ghain
    [0xdc] = "\xd9\x80", // tatweel
    [0xdd] = "\xd9\x81", // feh
    [0xde] = "\xd9\x82", // qaf
    [0xdf] = "\xd9\x83", // kaf

    [0xe0] = "\xc3\xa0", // a with grave
    [0xe1] = "\xd9\x84", // lam
    [0xe2] = "\xc3\xa2", // a with circumflex
    [0xe3] = "\xd9\x85", // meem
    [0xe4] = "\xd9\x86", // noon
    [0xe5] = "\xd9\x87", // heh
    [0xe6] = "\xd9\x88", // waw
    [0xe7] = "\xc3\xa7", // c-cedilla
    [0xe8] = "\xc3\xa8", // e with grave
    [0xe9] = "\xc3\xa9", // e with acute
    [0xea] = "\xc3\xaa", // e with circumflex
    [0xeb] = "\xc3\xab", // e with diaeresis
    [0xec] = "\xd9\x89", // alef maksura
    [0xed] = "\xd9\x8a", // yeh
    [0xee] = "\xc3\xae", // i with circumflex
    [0xef] = "\xc3\xaf", // i with diaeresis

    [0xf0] = "\xd9\x8b", // fathatan
    [0xf1] = "\xd9\x8c", // dammatan
    [0xf2] = "\xd9\x8d", // kasratan
    [0xf3] = "\xd9\x8e", // fatha
    [0xf4] = "\xc3\xb4", // o with circumflex
    [0xf5] = "\xd9\x8f", // damma
    [0xf6] = "\xd9\x90", // kasra
    [0xf7] = "\xc3\xb7", // divison sign
    [0xf8] = "\xd9\x91", // shadda
    [0xf9] = "\xc3\xb9", // u with grave
    [0xfa] = "\xd9\x92", // sukun
    [0xfb] = "\xc3\xbb", // u with circumflex
    [0xfc] = "\xc3\xbc", // u with diaeresis
    [0xfd] = "\xe2\x80\x8e", // left to right mark
    [0xfe] = "\xe2\x80\x8f", // right to left mark
    [0xff] = "\xdb\x92", // yeh barree
}

local function windows1256_to_utf8(text)
{
    local result = ""

    foreach (idx, charId in text)
    {
        charId += 256

        if (charId in windows1256_utf8_map)
            result += windows1256_utf8_map[charId]
        else
            result += text.slice(idx, idx + 1)
    }

    return result
}