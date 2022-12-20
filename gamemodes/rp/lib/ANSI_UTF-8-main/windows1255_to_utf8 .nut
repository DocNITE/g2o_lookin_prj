local windows1255_utf8_map =
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

    ["\x20"] = "\xa0", // NBSP
    ["\xc2\xa1"] = "\xa1", // inverted exclamation mark
    ["\xc2\xa2"] = "\xa2", // cent unit
    ["\xc2\xa3"] = "\xa3", // pound sterling unit
    ["\xe2\x82\xaa"] = "\xa4", // shekel sign
    ["\xc2\xa5"] = "\xa5", // jen unit
    ["\xc2\xa6"] = "\xa6", // vertical bar
    ["\xc2\xa7"] = "\xa7", // section sign
    ["\xc2\xa8"] = "\xa8", // diaeresis
    ["\xc2\xa9"] = "\xa9", // copyright sign
    ["\xc3\x97"] = "\xaa", // multiplication sign
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
    ["\xc3\xb7"] = "\xba", // division sign
    ["\xc2\xbb"] = "\xbb", // right guillemets
    ["\xc2\xbc"] = "\xbc", // one quarter
    ["\xc2\xbd"] = "\xbd", // one half
    ["\xc2\xbe"] = "\xbe", // three quarter
    ["\xc2\xbf"] = "\xbf", // inverted question mark

    ["\xd6\xb0"] = "\xc0", // sheva
    ["\xd6\xb1"] = "\xc1", // hataf segol
    ["\xd6\xb2"] = "\xc2", // hataf patah
    ["\xd6\xb3"] = "\xc3", // hataf qamats
    ["\xd6\xb4"] = "\xc4", // hiriq
    ["\xd6\xb5"] = "\xc5", // tsere
    ["\xd6\xb6"] = "\xc6", // segol
    ["\xd6\xb7"] = "\xc7", // patah
    ["\xd6\xb8"] = "\xc8", // qamats
    ["\x20\xd6\xb9"] = "\xc9", // holam
    ["\x20\xd6\xba"] = "\xca", // holam haser
    ["\xd6\xbb"] = "\xcb", // qubuts
    ["\xd6\xbc"] = "\xcc", // dagesh or mapiq
    ["\xd6\xbd"] = "\xcd", // meteg
    ["\xd6\xbe"] = "\xce", // maqaf
    ["\xd6\xbf"] = "\xcf", // rafe

    ["\xd7\x80"] = "\xd0", // paseq
    ["\xd7\x81"] = "\xd1", // shin dot
    ["\xd7\x82"] = "\xd2", // sin dot
    ["\xd7\x83"] = "\xd3", // sof passuk
    ["\xd7\xb0"] = "\xd4", // ligature yiddish double wav
    ["\xd7\xb1"] = "\xd5", // ligature yiddish vav yod
    ["\xd7\xb2"] = "\xd6", // ligature yiddish double yod
    ["\xd7\xb3"] = "\xd7", // geresh
    ["\xd7\xb4"] = "\xd8", // gershayim

    ["\xd7\x90"] = "\xe0", // aleph
    ["\xd7\x91"] = "\xe1", // bet
    ["\xd7\x92"] = "\xe2", // gimel
    ["\xd7\x93"] = "\xe3", // dalet
    ["\xd7\x94"] = "\xe4", // he
    ["\xd7\x95"] = "\xe5", // vav
    ["\xd7\x96"] = "\xe6", // zayin
    ["\xd7\x97"] = "\xe7", // heth
    ["\xd7\x98"] = "\xe8", // teth
    ["\xd7\x99"] = "\xe9", // yodh
    ["\xd7\x9a"] = "\xea", // final kaph
    ["\xd7\x9b"] = "\xeb", // kaph
    ["\xd7\x9c"] = "\xec", // lamedh
    ["\xd7\x9d"] = "\xed", // final mem
    ["\xd7\x9e"] = "\xee", // mem
    ["\xd7\x9f"] = "\xef", // final nun

    ["\xd7\xa0"] = "\xf0", // nun
    ["\xd7\xa1"] = "\xf1", // samekh
    ["\xd7\xa2"] = "\xf2", // ayin
    ["\xd7\xa3"] = "\xf3", // final pe
    ["\xd7\xa4"] = "\xf4", // pe
    ["\xd7\xa5"] = "\xf5", // final tsade
    ["\xd7\xa6"] = "\xf6", // tsade
    ["\xd7\xa7"] = "\xf7", // qoph
    ["\xd7\xa8"] = "\xf8", // resh
    ["\xd7\xa9"] = "\xf9", // shin
    ["\xd7\xaa"] = "\xfa", // taw
    ["\xe2\x80\x8e"] = "\xfd", // left to right mark
    ["\xe2\x80\x8f"] = "\xfe", // right to left mark
}

local function windows1255_to_utf8(text)
{
    local result = ""

    foreach (idx, charId in text)
    {
        charId += 256

        if (charId in windows1255_utf8_map)
            result += windows1255_utf8_map[charId]
        else
            result += text.slice(idx, idx + 1)
    }

    return result
}