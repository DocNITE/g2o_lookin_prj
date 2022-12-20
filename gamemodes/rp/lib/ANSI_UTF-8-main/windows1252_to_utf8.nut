local windows1252_utf8_map =
{
    [0x80] = "\xe2\x82\xac", // euro sign
    [0x82] = "\xe2\x80\x9a", // lower quotation mark
    [0x83] = "\xc6\x92", // letter F with a hook
    [0x84] = "\xe2\x80\x9e", // lower quotation marks
    [0x85] = "\xe2\x80\xa6", // ellipsis
    [0x86] = "\xe2\x80\xa0", // dagger
    [0x87] = "\xe2\x80\xa1", // double dagger
    [0x88] = "\xcb\x86", // circumflex
    [0x89] = "\xe2\x80\xb0", // per mille
    [0x8a] = "\xc5\xa0", // S with caron
    [0x8b] = "\xe2\x80\xb9", // left guillemet
    [0x8c] = "\xc5\x92", // ligature of O and E
    [0x8e] = "\xc5\xbd", // Z with caron

    [0x91] = "\xe2\x80\x98", // upper quotation mark (opening)
    [0x92] = "\xe2\x80\x99", // upper quotation mark (closing)
    [0x93] = "\xe2\x80\x9c", // upper quotation marks (opening)
    [0x94] = "\xe2\x80\x9d", // upper quotation marks (closing)
    [0x95] = "\xe2\x80\xa2", // bullet sign
    [0x96] = "\xe2\x80\x93", // en dash
    [0x97] = "\xe2\x80\x94", // em dash
    [0x98] = "\xcb\x9c", // tilde
    [0x99] = "\xe2\x84\xa2", // trademark sign
    [0x9a] = "\xc5\xa1", // s with caron
    [0x9b] = "\xe2\x80\xba", // right guillemet
    [0x9c] = "\xc5\x93", // ligature of o and e
    [0x9e] = "\xc5\xbe", // z with caron
    [0x9f] = "\xc5\xb8", // Lj-

    [0xa0] = "\x20", // NBSP
    [0xa1] = "\xc2\xa1", // inverted exclamation mark
    [0xa2] = "\xc2\xa2", // cent unit
    [0xa3] = "\xc2\xa3", // pound sterling unit
    [0xa4] = "\xc2\xa4", // currency sign
    [0xa5] = "\xc2\xa5", // jen unit
    [0xa6] = "\xc2\xa6", // vertical bar
    [0xa7] = "\xc2\xa7", // section sign
    [0xa8] = "\xc2\xa8", // diaeresis
    [0xa9] = "\xc2\xa9", // copyright sign
    [0xaa] = "\xc2\xaa", // feminine ordinal indicator
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
    [0xba] = "\xc2\xba", // masculine ordinal indicator
    [0xbb] = "\xc2\xbb", // right guillemets
    [0xbc] = "\xc2\xbc", // one quarter
    [0xbd] = "\xc2\xbd", // one half
    [0xbe] = "\xc2\xbe", // three quarter
    [0xbf] = "\xc2\xbf", // inverted question mark

    [0xc0] = "\xc3\x80", // A with grave
    [0xc1] = "\xc3\x81", // A with acute
    [0xc2] = "\xc3\x82", // A with circumflex
    [0xc3] = "\xc3\x83", // A with tilde
    [0xc4] = "\xc3\x84", // A with diaeresis
    [0xc5] = "\xc3\x85", // A with overring
    [0xc6] = "\xc3\x86", // ligature of A and E
    [0xc7] = "\xc3\x87", // C-cedilla
    [0xc8] = "\xc3\x88", // E with grave
    [0xc9] = "\xc3\x89", // E with acute
    [0xca] = "\xc3\x8a", // E with circumflex
    [0xcb] = "\xc3\x8b", // E with diaeresis
    [0xcc] = "\xc3\x8c", // I with grave
    [0xcd] = "\xc3\x8d", // I with acute
    [0xce] = "\xc3\x8e", // I with circumflex
    [0xcf] = "\xc3\x8f", // I with diaeresis

    [0xd0] = "\xc3\x90", // Eth
    [0xd1] = "\xc3\x91", // N with tilde
    [0xd2] = "\xc3\x92", // O with grave
    [0xd3] = "\xc3\x93", // O with acute
    [0xd4] = "\xc3\x94", // O with circumflex
    [0xd5] = "\xc3\x95", // O with tilde
    [0xd6] = "\xc3\x96", // O with diaeresis
    [0xd7] = "\xc3\x97", // multiplication sign
    [0xd8] = "\xc3\x98", // O with slash
    [0xd9] = "\xc3\x99", // U with grave
    [0xda] = "\xc3\x9a", // U with acute
    [0xdb] = "\xc3\x9b", // U with circumflex
    [0xdc] = "\xc3\x9c", // U with diaeresis
    [0xdd] = "\xc3\x9d", // Y with acute
    [0xde] = "\xc3\x9e", // thorn
    [0xdf] = "\xc3\x9f", // eszett

    [0xe0] = "\xc3\xa0", // a with grave
    [0xe1] = "\xc3\xa1", // a with acute
    [0xe2] = "\xc3\xa2", // a with circumflex
    [0xe3] = "\xc3\xa3", // a with tilde
    [0xe4] = "\xc3\xa4", // a with diaeresis
    [0xe5] = "\xc3\xa5", // a with overring
    [0xe6] = "\xc3\xa6", // ligature of a and e
    [0xe7] = "\xc3\xa7", // c-cedilla
    [0xe8] = "\xc3\xa8", // e with grave
    [0xe9] = "\xc3\xa9", // e with acute
    [0xea] = "\xc3\xaa", // e with circumflex
    [0xeb] = "\xc3\xab", // e with diaeresis
    [0xec] = "\xc3\xac", // i with grave
    [0xed] = "\xc3\xad", // i with acute
    [0xee] = "\xc3\xae", // i with circumflex
    [0xef] = "\xc3\xaf", // i with diaeresis

    [0xf0] = "\xc3\xb0", // eth
    [0xf1] = "\xc3\xb1", // n with tilde
    [0xf2] = "\xc3\xb2", // o with grave
    [0xf3] = "\xc3\xb3", // o with acute
    [0xf4] = "\xc3\xb4", // o with circumflex
    [0xf5] = "\xc3\xb5", // o with tilde
    [0xf6] = "\xc3\xb6", // o with diaeresis
    [0xf7] = "\xc3\xb7", // divison sign
    [0xf8] = "\xc3\xb8", // o with slash
    [0xf9] = "\xc3\xb9", // u with grave
    [0xfa] = "\xc3\xba", // u with acute
    [0xfb] = "\xc3\xbb", // u with circumflex
    [0xfc] = "\xc3\xbc", // u with diaeresis
    [0xfd] = "\xc3\xbd", // y with acute
    [0xfe] = "\xc3\xbe", // þorn
    [0xff] = "\xc3\xbf", // y with diaeresis
}

local function windows1252_to_utf8(text)
{
    local result = ""

    foreach (idx, charId in text)
    {
        charId += 256

        if (charId in windows1252_utf8_map)
            result += windows1252_utf8_map[charId]
        else
            result += text.slice(idx, idx + 1)
    }

    return result
}