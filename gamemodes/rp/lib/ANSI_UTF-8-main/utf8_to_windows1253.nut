local utf8_windows1253_map =
{
    ["\xe2\x82\xac"] = "\x80", // euro sign
    ["\xe2\x80\x9a"] = "\x82", // lower quotation mark
    ["\xc6\x92"] = "\x83", // letter F with a hook
    ["\xe2\x80\x9e"] = "\x84", // lower quotation marks
    ["\xe2\x80\xa6"] = "\x85", // ellipsis
    ["\xe2\x80\xa0"] = "\x86", // dagger
    ["\xe2\x80\xa1"] = "\x87", // double dagger
    ["\xe2\x80\xb0"] = "\x89", // per mille
    ["\xe2\x80\xb9"] = "\x8b", // left guillemet

    ["\xe2\x80\x98"] = "\x91", // upper quotation mark (opening)
    ["\xe2\x80\x99"] = "\x92", // upper quotation mark (closing)
    ["\xe2\x80\x9c"] = "\x93", // upper quotation marks (opening)
    ["\xe2\x80\x9d"] = "\x94", // upper quotation marks (closing)
    ["\xe2\x80\xa2"] = "\x95", // bullet sign
    ["\xe2\x80\x93"] = "\x96", // en dash
    ["\xe2\x80\x94"] = "\x97", // em dash
    ["\xe2\x84\xa2"] = "\x99", // trademark sign
    ["\xe2\x80\xba"] = "\x9b", // right guillemet

    ["\x20"] = "\xa0", // NBSP
    ["\xce\x85"] = "\xa1", // greek dialytika tonos
    ["\xce\x86"] = "\xa2", // Alpha with tonos
    ["\xc2\xa3"] = "\xa3", // pound sterling unit
    ["\xc2\xa4"] = "\xa4", // currency sign
    ["\xc2\xa5"] = "\xa5", // jen unit
    ["\xc2\xa6"] = "\xa6", // vertical bar
    ["\xc2\xa7"] = "\xa7", // section sign
    ["\xc2\xa8"] = "\xa8", // diaeresis
    ["\xc2\xa9"] = "\xa9", // copyright sign
    ["\xc2\xab"] = "\xab", // left guillemets
    ["\xc2\xac"] = "\xac", // negation
    ["\xc2\xad"] = "\xad", // soft hyphen
    ["\xc2\xae"] = "\xae", // registered trademark sign
    ["\xe2\x80\x95"] = "\xaf", // dash

    ["\xc2\xb0"] = "\xb0", // degree sign
    ["\xc2\xb1"] = "\xb1", // plus-minus sign
    ["\xc2\xb2"] = "\xb2", // square function
    ["\xc2\xb3"] = "\xb3", // cube function
    ["\xce\x84"] = "\xb4", // greek tonos
    ["\xc2\xb5"] = "\xb5", // Mu letter
    ["\xc2\xb6"] = "\xb6", // pilcrow
    ["\xc2\xb7"] = "\xb7", // middle dot
    ["\xce\x88"] = "\xb8", // Epsilon with tonos
    ["\xce\x89"] = "\xb9", // ETA with tonos
    ["\xce\x8a"] = "\xba", // IOTA with tonos
    ["\xc2\xbb"] = "\xbb", // right guillemets
    ["\xce\x8c"] = "\xbc", // OMICRON with tonos
    ["\xc2\xbd"] = "\xbd", // one half
    ["\xce\x8e"] = "\xbe", // UPSILON with tonos
    ["\xce\x8f"] = "\xbf", // OMEGA with tonos

    ["\xce\x90"] = "\xc0", // iota with dialytika and tonos
    ["\xce\x91"] = "\xc1", // ALPHA
    ["\xce\x92"] = "\xc2", // BETA
    ["\xce\x93"] = "\xc3", // GAMMA
    ["\xce\x94"] = "\xc4", // DELTA
    ["\xce\x95"] = "\xc5", // EPSILON
    ["\xce\x96"] = "\xc6", // ZETA
    ["\xce\x97"] = "\xc7", // ETA
    ["\xce\x98"] = "\xc8", // THETA
    ["\xce\x99"] = "\xc9", // IOTA
    ["\xce\x9a"] = "\xca", // KAPPA
    ["\xce\x9b"] = "\xcb", // LAMBDA
    ["\xce\x9c"] = "\xcc", // MU
    ["\xce\x9d"] = "\xcd", // NU
    ["\xce\x9e"] = "\xce", // XI
    ["\xce\x9f"] = "\xcf", // OMICRON

    ["\xce\xa0"] = "\xd0", // PI
    ["\xce\xa1"] = "\xd1", // RHO
    ["\xce\xa3"] = "\xd3", // SIGMA
    ["\xce\xa4"] = "\xd4", // TAU
    ["\xce\xa5"] = "\xd5", // UPSILON
    ["\xce\xa6"] = "\xd6", // PHI
    ["\xce\xa7"] = "\xd7", // CHI
    ["\xce\xa8"] = "\xd8", // PSI
    ["\xce\xa9"] = "\xd9", // OMEGA
    ["\xce\xaa"] = "\xda", // IOTA with dialytika
    ["\xce\xab"] = "\xdb", // UPSILON with dialytika
    ["\xce\xac"] = "\xdc", // alpha with tonos
    ["\xce\xad"] = "\xdd", // epsilon with tonos
    ["\xce\xae"] = "\xde", // eta with tonos
    ["\xce\xaf"] = "\xdf", // iota with tonos

    ["\xce\xb0"] = "\xe0", // upsilon with dialytika and tonos
    ["\xce\xb1"] = "\xe1", // alpha
    ["\xce\xb2"] = "\xe2", // beta
    ["\xce\xb3"] = "\xe3", // gamma
    ["\xce\xb4"] = "\xe4", // delta
    ["\xce\xb5"] = "\xe5", // epsilon
    ["\xce\xb6"] = "\xe6", // zeta
    ["\xce\xb7"] = "\xe7", // eta
    ["\xce\xb8"] = "\xe8", // theta
    ["\xce\xb9"] = "\xe9", // iota
    ["\xce\xba"] = "\xea", // kappa
    ["\xce\xbb"] = "\xeb", // lambda
    ["\xce\xbc"] = "\xec", // mu
    ["\xce\xbd"] = "\xed", // nu
    ["\xce\xbe"] = "\xee", // xi
    ["\xce\xbf"] = "\xef", // omicron

    ["\xcf\x80"] = "\xf0", // pi
    ["\xcf\x81"] = "\xf1", // rho
    ["\xcf\x82"] = "\xf2", // final sigma
    ["\xcf\x83"] = "\xf3", // sigma
    ["\xcf\x84"] = "\xf4", // tau
    ["\xcf\x85"] = "\xf5", // upsilon
    ["\xcf\x86"] = "\xf6", // phi
    ["\xcf\x87"] = "\xf7", // chi
    ["\xcf\x88"] = "\xf8", // psi
    ["\xcf\x89"] = "\xf9", // omega
    ["\xcf\x8a"] = "\xfa", // iota with dialytika
    ["\xcf\x8b"] = "\xfb", // upsilon wih dialytika
    ["\xcf\x8c"] = "\xfc", // omicron with tonos
    ["\xcf\x8d"] = "\xfd", // upsilon with tonos
    ["\xcf\x8e"] = "\xfe", // omega with tonos
}

local function utf8_to_windows1253(text)
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
        else if (charBytes in utf8_windows1253_map)
            result += utf8_windows1253_map[charBytes]
        else
            result += "?"
    }

    return result
}