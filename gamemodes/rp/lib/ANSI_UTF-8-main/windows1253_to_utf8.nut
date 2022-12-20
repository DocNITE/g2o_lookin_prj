local windows1253_utf8_map =
{
    [0x80] = "\xe2\x82\xac", // euro sign
    [0x82] = "\xe2\x80\x9a", // lower quotation mark
    [0x83] = "\xc6\x92", // letter F with a hook
    [0x84] = "\xe2\x80\x9e", // lower quotation marks
    [0x85] = "\xe2\x80\xa6", // ellipsis
    [0x86] = "\xe2\x80\xa0", // dagger
    [0x87] = "\xe2\x80\xa1", // double dagger
    [0x89] = "\xe2\x80\xb0", // per mille
    [0x8b] = "\xe2\x80\xb9", // left guillemet

    [0x91] = "\xe2\x80\x98", // upper quotation mark (opening)
    [0x92] = "\xe2\x80\x99", // upper quotation mark (closing)
    [0x93] = "\xe2\x80\x9c", // upper quotation marks (opening)
    [0x94] = "\xe2\x80\x9d", // upper quotation marks (closing)
    [0x95] = "\xe2\x80\xa2", // bullet sign
    [0x96] = "\xe2\x80\x93", // en dash
    [0x97] = "\xe2\x80\x94", // em dash
    [0x99] = "\xe2\x84\xa2", // trademark sign
    [0x9b] = "\xe2\x80\xba", // right guillemet

    [0xa0] = "\x20", // NBSP
    [0xa1] = "\xce\x85", // greek dialytika tonos
    [0xa2] = "\xce\x86", // Alpha with tonos
    [0xa3] = "\xc2\xa3", // pound sterling unit
    [0xa4] = "\xc2\xa4", // currency sign
    [0xa5] = "\xc2\xa5", // jen unit
    [0xa6] = "\xc2\xa6", // vertical bar
    [0xa7] = "\xc2\xa7", // section sign
    [0xa8] = "\xc2\xa8", // diaeresis
    [0xa9] = "\xc2\xa9", // copyright sign
    [0xab] = "\xc2\xab", // left guillemets
    [0xac] = "\xc2\xac", // negation
    [0xad] = "\xc2\xad", // soft hyphen
    [0xae] = "\xc2\xae", // registered trademark sign
    [0xaf] = "\xe2\x80\x95", // dash

    [0xb0] = "\xc2\xb0", // degree sign
    [0xb1] = "\xc2\xb1", // plus-minus sign
    [0xb2] = "\xc2\xb2", // square function
    [0xb3] = "\xc2\xb3", // cube function
    [0xb4] = "\xce\x84", // greek tonos
    [0xb5] = "\xc2\xb5", // Mu letter
    [0xb6] = "\xc2\xb6", // pilcrow
    [0xb7] = "\xc2\xb7", // middle dot
    [0xb8] = "\xce\x88", // Epsilon with tonos
    [0xb9] = "\xce\x89", // ETA with tonos
    [0xba] = "\xce\x8a", // IOTA with tonos
    [0xbb] = "\xc2\xbb", // right guillemets
    [0xbc] = "\xce\x8c", // OMICRON with tonos
    [0xbd] = "\xc2\xbd", // one half
    [0xbe] = "\xce\x8e", // UPSILON with tonos
    [0xbf] = "\xce\x8f", // OMEGA with tonos

    [0xc0] = "\xce\x90", // iota with dialytika and tonos
    [0xc1] = "\xce\x91", // ALPHA
    [0xc2] = "\xce\x92", // BETA
    [0xc3] = "\xce\x93", // GAMMA
    [0xc4] = "\xce\x94", // DELTA
    [0xc5] = "\xce\x95", // EPSILON
    [0xc6] = "\xce\x96", // ZETA
    [0xc7] = "\xce\x97", // ETA
    [0xc8] = "\xce\x98", // THETA
    [0xc9] = "\xce\x99", // IOTA
    [0xca] = "\xce\x9a", // KAPPA
    [0xcb] = "\xce\x9b", // LAMBDA
    [0xcc] = "\xce\x9c", // MU
    [0xcd] = "\xce\x9d", // NU
    [0xce] = "\xce\x9e", // XI
    [0xcf] = "\xce\x9f", // OMICRON

    [0xd0] = "\xce\xa0", // PI
    [0xd1] = "\xce\xa1", // RHO
    [0xd3] = "\xce\xa3", // SIGMA
    [0xd4] = "\xce\xa4", // TAU
    [0xd5] = "\xce\xa5", // UPSILON
    [0xd6] = "\xce\xa6", // PHI
    [0xd7] = "\xce\xa7", // CHI
    [0xd8] = "\xce\xa8", // PSI
    [0xd9] = "\xce\xa9", // OMEGA
    [0xda] = "\xce\xaa", // IOTA with dialytika
    [0xdb] = "\xce\xab", // UPSILON with dialytika
    [0xdc] = "\xce\xac", // alpha with tonos
    [0xdd] = "\xce\xad", // epsilon with tonos
    [0xde] = "\xce\xae", // eta with tonos
    [0xdf] = "\xce\xaf", // iota with tonos

    [0xe0] = "\xce\xb0", // upsilon with dialytika and tonos
    [0xe1] = "\xce\xb1", // alpha
    [0xe2] = "\xce\xb2", // beta
    [0xe3] = "\xce\xb3", // gamma
    [0xe4] = "\xce\xb4", // delta
    [0xe5] = "\xce\xb5", // epsilon
    [0xe6] = "\xce\xb6", // zeta
    [0xe7] = "\xce\xb7", // eta
    [0xe8] = "\xce\xb8", // theta
    [0xe9] = "\xce\xb9", // iota
    [0xea] = "\xce\xba", // kappa
    [0xeb] = "\xce\xbb", // lambda
    [0xec] = "\xce\xbc", // mu
    [0xed] = "\xce\xbd", // nu
    [0xee] = "\xce\xbe", // xi
    [0xef] = "\xce\xbf", // omicron

    [0xf0] = "\xcf\x80", // pi
    [0xf1] = "\xcf\x81", // rho
    [0xf2] = "\xcf\x82", // final sigma
    [0xf3] = "\xcf\x83", // sigma
    [0xf4] = "\xcf\x84", // tau
    [0xf5] = "\xcf\x85", // upsilon
    [0xf6] = "\xcf\x86", // phi
    [0xf7] = "\xcf\x87", // chi
    [0xf8] = "\xcf\x88", // psi
    [0xf9] = "\xcf\x89", // omega
    [0xfa] = "\xcf\x8a", // iota with dialytika
    [0xfb] = "\xcf\x8b", // upsilon wih dialytika
    [0xfc] = "\xcf\x8c", // omicron with tonos
    [0xfd] = "\xcf\x8d", // upsilon with tonos
    [0xfe] = "\xcf\x8e", // omega with tonos
}

local function windows1253_to_utf8(text)
{
    local result = ""

    foreach (idx, charId in text)
    {
        charId += 256

        if (charId in windows1253_utf8_map)
            result += windows1253_utf8_map[charId]
        else
            result += text.slice(idx, idx + 1)
    }

    return result
}