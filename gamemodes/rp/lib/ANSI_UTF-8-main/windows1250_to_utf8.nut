local windows1250_utf8_map =
{
    [0x80] = "\xe2\x82\xac", // euro sign
    [0x82] = "\xe2\x80\x9a", // lower quotation mark
    [0x84] = "\xe2\x80\x9e", // lower quotation marks
    [0x85] = "\xe2\x80\xa6", // ellipsis
    [0x86] = "\xe2\x80\xa0", // dagger
    [0x87] = "\xe2\x80\xa1", // double dagger
    [0x89] = "\xe2\x80\xb0", // per mille
    [0x8a] = "\xc5\xa0", // S with caron
    [0x8b] = "\xe2\x80\xb9", // left guillemet
    [0x8c] = "\xc5\x9a", // S with acute
    [0x8d] = "\xc5\xa4", // T with caron
    [0x8e] = "\xc5\xbd", // Z with caron
    [0x8f] = "\xc5\xb9", // Z with acute

    [0x91] = "\xe2\x80\x98", // upper quotation mark (opening)
    [0x92] = "\xe2\x80\x99", // upper quotation mark (closing)
    [0x93] = "\xe2\x80\x9c", // upper quotation marks (opening)
    [0x94] = "\xe2\x80\x9d", // upper quotation marks (closing)
    [0x95] = "\xe2\x80\xa2", // bullet sign
    [0x96] = "\xe2\x80\x93", // en dash
    [0x97] = "\xe2\x80\x94", // em dash
    [0x99] = "\xe2\x84\xa2", // trademark sign
    [0x9a] = "\xc5\xa1", // s with caron
    [0x9b] = "\xe2\x80\xba", // right guillemet
    [0x9c] = "\xc5\x9b", // s with acute
    [0x9d] = "\xc5\xa5", // t with caron
    [0x9e] = "\xc5\xbe", // z with caron
    [0x9f] = "\xc5\xba", // z with acute

    [0xa0] = "\x20", // NBSP
    [0xa1] = "\xcb\x87", // caron
    [0xa2] = "\xcb\x98", // breve
    [0xa3] = "\xc5\x81", // L with stroke
    [0xa4] = "\xc2\xa4", // currency sign
    [0xa5] = "\xc4\x84", // A with ogonek
    [0xa6] = "\xc2\xa6", // vertical bar
    [0xa7] = "\xc2\xa7", // section sign
    [0xa8] = "\xc2\xa8", // diaeresis
    [0xa9] = "\xc2\xa9", // copyright sign
    [0xaa] = "\xc5\x9e", // S-cedilla
    [0xab] = "\xc2\xab", // left guillemets
    [0xac] = "\xc2\xac", // negation
    [0xad] = "\xc2\xad", // soft hyphen
    [0xae] = "\xc2\xae", // registered trademark sign
    [0xaf] = "\xc5\xbb", // Z with dot above

    [0xb0] = "\xc2\xb0", // degree sign
    [0xb1] = "\xc2\xb1", // plus-minus sign
    [0xb2] = "\xcb\x9b", // ogonek
    [0xb3] = "\xc5\x82", // l with stroke
    [0xb4] = "\xc2\xb4", // acute accent
    [0xb5] = "\xc2\xb5", // Mu letter
    [0xb6] = "\xc2\xb6", // pilcrow
    [0xb7] = "\xc2\xb7", // middle dot
    [0xb8] = "\xc2\xb8", // cedilla
    [0xb9] = "\xc4\x85", // a with ogonek
    [0xba] = "\xc5\x9f", // s-cedilla
    [0xbb] = "\xc2\xbb", // right guillemets
    [0xbc] = "\xc4\xbd", // Lj-
    [0xbd] = "\xcb\x9d", // double acute accent
    [0xbe] = "\xc4\xbe", // lj-
    [0xbf] = "\xc5\xbc", // z with dot above

    [0xc0] = "\xc5\x94", // R with acute
    [0xc1] = "\xc3\x81", // A with acute
    [0xc2] = "\xc3\x82", // A-circumflex
    [0xc3] = "\xc4\x82", // A-breve
    [0xc4] = "\xc3\x84", // A with diaeresis
    [0xc5] = "\xc4\xb9", // L with acute
    [0xc6] = "\xc4\x86", // C with acute
    [0xc7] = "\xc3\x87", // C-cedilla
    [0xc8] = "\xc4\x8c", // C with caron
    [0xc9] = "\xc3\x89", // C with acute
    [0xca] = "\xc4\x98", // E with ogonek
    [0xcb] = "\xc3\x8b", // E with diaeresis
    [0xcc] = "\xc3\x8b", // E with caron
    [0xcd] = "\xc3\x8d", // I with acute
    [0xce] = "\xc3\x8e", // I-circumflex
    [0xcf] = "\xc4\x8e", // D with caron

    [0xd0] = "\xc4\x90", // crossed D
    [0xd1] = "\xc5\x83", // N with acute
    [0xd2] = "\xc5\x87", // N with caron
    [0xd3] = "\xc3\x93", // O with acute
    [0xd4] = "\xc3\x94", // O-circumflex
    [0xd5] = "\xc5\x90", // O with dobule accute
    [0xd6] = "\xc3\x96", // O with diaeresis
    [0xd7] = "\xc3\x97", // multiplication sign
    [0xd8] = "\xc5\x98", // R with caron
    [0xd9] = "\xc5\xae", // U with diacritic
    [0xda] = "\xc3\x9a", // U with acute
    [0xdb] = "\xc5\xb0", // U with double accent
    [0xdc] = "\xc3\x9c", // U with diaeresis
    [0xdd] = "\xc3\x9d", // Y with acute
    [0xdf] = "\xc5\xa2", // T-cedilla

    [0xe0] = "\xc5\x95", // r with acute
    [0xe1] = "\xc3\xa1", // a with acute
    [0xe2] = "\xc3\xa2", // a-circumflex
    [0xe3] = "\xc4\x83", // a-breve
    [0xe4] = "\xc3\xa4", // a with diaeresis
    [0xe5] = "\xc4\xba", // l with acute
    [0xe6] = "\xc4\x87", // c with acute
    [0xe7] = "\xc3\xa7", // c-cedilla
    [0xe8] = "\xc4\x8d", // c with caron
    [0xe9] = "\xc3\xa9", // c with acute
    [0xea] = "\xc4\x99", // e with ogonek
    [0xeb] = "\xc3\xab", // e with diaeresis
    [0xec] = "\xc4\x9b", // e with caron
    [0xed] = "\xc3\xad", // i with acute
    [0xee] = "\xc3\xae", // i-circumflex
    [0xef] = "\xc4\x8f", // d with caron

    [0xf0] = "\xc4\x91", // crossed d
    [0xf1] = "\xc5\x84", // n with acute
    [0xf2] = "\xc5\x88", // n with caron
    [0xf3] = "\xc3\xb3", // o with acute
    [0xf4] = "\xc3\xb4", // o-circumflex
    [0xf5] = "\xc5\x91", // o with double accent
    [0xf6] = "\xc3\xb6", // o with diaeresis
    [0xf7] = "\xc3\xb7", // division sign
    [0xf8] = "\xc5\x99", // r with caron
    [0xf9] = "\xc5\xaf", // u with diacritic
    [0xfa] = "\xc3\xba", // u with acute
    [0xfb] = "\xc5\xb1", // u with double accent
    [0xfc] = "\xc3\xbc", // u with diaeresis
    [0xfd] = "\xc3\xbd", // y with acute
    [0xfe] = "\xc5\xa3", // t-cedilla
    [0xff] = "\xcb\x99", // diactric dot
}

local function windows1250_to_utf8(text)
{
    local result = ""

    foreach (idx, charId in text)
    {
        charId += 256

        if (charId in windows1250_utf8_map)
            result += windows1250_utf8_map[charId]
        else
            result += text.slice(idx, idx + 1)
    }

    return result
}
