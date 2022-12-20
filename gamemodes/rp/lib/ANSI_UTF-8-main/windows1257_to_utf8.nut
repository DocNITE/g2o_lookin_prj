local windows1257_utf8_map =
{
    [0x80] = "\xe2\x82\xac", // euro sign
    [0x82] = "\xe2\x80\x9a", // lower quotation mark
    [0x84] = "\xe2\x80\x9e", // lower quotation marks
    [0x85] = "\xe2\x80\xa6", // ellipsis
    [0x86] = "\xe2\x80\xa0", // dagger
    [0x87] = "\xe2\x80\xa1", // double dagger
    [0x89] = "\xe2\x80\xb0", // per mille
    [0x8b] = "\xe2\x80\xb9", // left guillemet
    [0x8d] = "\xc2\xa8", // diaeresis
    [0x8e] = "\xcb\x87", // caron
    [0x8f] = "\xc2\xb8", // cedilla

    [0x91] = "\xe2\x80\x98", // upper quotation mark (opening)
    [0x92] = "\xe2\x80\x99", // upper quotation mark (closing)
    [0x93] = "\xe2\x80\x9c", // upper quotation marks (opening)
    [0x94] = "\xe2\x80\x9d", // upper quotation marks (closing)
    [0x95] = "\xe2\x80\xa2", // bullet sign
    [0x96] = "\xe2\x80\x93", // en dash
    [0x97] = "\xe2\x80\x94", // em dash
    [0x99] = "\xe2\x84\xa2", // trademark sign
    [0x9b] = "\xe2\x80\xba", // right guillemet
    [0x9d] = "\xc2\xaf", // macron
    [0x9e] = "\xcb\x9b", // ogonek

    [0xa0] = "\x20", // NBSP
    [0xa2] = "\xc2\xa2", // cent unit
    [0xa3] = "\xc2\xa3", // pound sterling unit
    [0xa4] = "\xc2\xa4", // currency sign
    [0xa6] = "\xc2\xa6", // vertical bar
    [0xa7] = "\xc2\xa7", // section sign
    [0xa8] = "\xc2\xa8", // O with stroke
    [0xa9] = "\xc2\xa9", // copyright sign
    [0xaa] = "\xc5\x96", // R-cedilla
    [0xab] = "\xc2\xab", // left guillemets
    [0xac] = "\xc2\xac", // negation
    [0xad] = "\xc2\xad", // soft hyphen
    [0xae] = "\xc2\xae", // registered trademark sign
    [0xaf] = "\xc2\xaf", // AE

    [0xb0] = "\xc2\xb0", // degree sign
    [0xb1] = "\xc2\xb1", // plus-minus sign
    [0xb2] = "\xc2\xb2", // square function
    [0xb3] = "\xc2\xb3", // cube function
    [0xb4] = "\xc2\xb4", // acute accent
    [0xb5] = "\xc2\xb5", // Mu letter
    [0xb6] = "\xc2\xb6", // pilcrow
    [0xb7] = "\xc2\xb7", // middle dot
    [0xb8] = "\xc3\xb8", // o with stroke
    [0xb9] = "\xc2\xb9", // superscript
    [0xba] = "\xc5\x97", // r-cedilla
    [0xbb] = "\xc2\xbb", // right guillemets
    [0xbc] = "\xc2\xbc", // one quarter
    [0xbd] = "\xc2\xbd", // one half
    [0xbe] = "\xc2\xbe", // three quarter
    [0xbf] = "\xc2\xbf", // ae

    [0xc0] = "\xc4\x84", // A with ogonek
    [0xc1] = "\xc4\xae", // I with ogonek
    [0xc2] = "\xc4\x80", // A with macron
    [0xc3] = "\xc4\x86", // C with acute
    [0xc4] = "\xc3\x84", // A with diaeresis
    [0xc5] = "\xc3\x85", // A with overring
    [0xc6] = "\xc4\x98", // E with ogonek
    [0xc7] = "\xc4\x92", // E with macron
    [0xc8] = "\xc4\x8c", // C with caron
    [0xc9] = "\xc3\x89", // E with acute
    [0xca] = "\xc5\xb9", // Z with acute
    [0xcb] = "\xc4\x96", // E with dot above
    [0xcc] = "\xc4\xa2", // G-cedilla
    [0xcd] = "\xc4\xb6", // K-cedilla
    [0xce] = "\xc4\xaa", // I with macron
    [0xcf] = "\xc4\xbb", // L-cedilla

    [0xd0] = "\xc5\xa0", // S with caron
    [0xd1] = "\xc5\x83", // N with acute
    [0xd2] = "\xc5\x85", // N-cedilla
    [0xd3] = "\xc3\x93", // O with acute
    [0xd4] = "\xc5\x8c", // O with macron
    [0xd5] = "\xc3\x95", // O with tilde
    [0xd6] = "\xc3\x96", // O with diaeresis
    [0xd7] = "\xc3\x97", // multiplication sign
    [0xd8] = "\xc5\xb2", // U with ogonek
    [0xd9] = "\xc5\x81", // L with stroke
    [0xda] = "\xc5\x9a", // S with acute
    [0xdb] = "\xc5\xaa", // U with macron
    [0xdc] = "\xc3\x9c", // U with diaeresis
    [0xdd] = "\xc5\xbb", // Z with dot above
    [0xde] = "\xc5\xbd", // Z with caron
    [0xdf] = "\xc3\x9f", // eszett

    [0xe0] = "\xc4\x85", // a with ogonek
    [0xe1] = "\xc4\xaf", // i with ogonek
    [0xe2] = "\xc4\x81", // a with macron
    [0xe3] = "\xc4\x87", // c with acute
    [0xe4] = "\xc3\xa4", // a with diaeresis
    [0xe5] = "\xc3\xa5", // a with overring
    [0xe6] = "\xc4\x99", // e with ogonek
    [0xe7] = "\xc4\x93", // e with macron
    [0xe8] = "\xc4\x8d", // c with caron
    [0xe9] = "\xc3\xa9", // e with acute
    [0xea] = "\xc5\xba", // z with acute
    [0xeb] = "\xc4\x97", // e with dot above
    [0xec] = "\xc4\xa3", // g-cedilla
    [0xed] = "\xc4\xb7", // k-cedilla
    [0xee] = "\xc4\xab", // i with macron
    [0xef] = "\xc4\xbc", // l-cedilla

    [0xf0] = "\xc5\xa1", // s with caron
    [0xf1] = "\xc5\x84", // n with acute
    [0xf2] = "\xc5\x86", // n-cedilla
    [0xf3] = "\xc3\xb3", // o with acute
    [0xf4] = "\xc5\x8d", // o with macron
    [0xf5] = "\xc3\xb5", // o with tilde
    [0xf6] = "\xc3\xb6", // o with diaeresis
    [0xf7] = "\xc3\xb7", // divison sign
    [0xf8] = "\xc5\xb3", // u with ogonek
    [0xf9] = "\xc5\x82", // l with stroke
    [0xfa] = "\xc5\x9b", // s with acute
    [0xfb] = "\xc5\xab", // u with macron
    [0xfc] = "\xc3\xbc", // u with diaeresis
    [0xfd] = "\xc5\xbc", // z with dot above
    [0xfe] = "\xc5\xbe", // z with caron
    [0xff] = "\xcb\x99", // dot above
}

local function windows1257_to_utf8(text)
{
    local result = ""

    foreach (idx, charId in text)
    {
        charId += 256

        if (charId in windows1257_utf8_map)
            result += windows1257_utf8_map[charId]
        else
            result += text.slice(idx, idx + 1)
    }

    return result
}