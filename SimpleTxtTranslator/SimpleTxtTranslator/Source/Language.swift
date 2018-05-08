//
//  Language.swift
//  SimpleTxtTranslator
//
//  Created by camila oliveira on 08/05/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

public enum Language: Int {
    case Automatic
    case Afrikaans
    case Albanian
    case Amharic
    case Arabic
    case Armenian
    case Azerbaijani
    case Basque
    case Belarusian
    case Bengali
    case Bosnian
    case Bulgarian
    case Catalan
    case Cebuano
    case Chichewa
    case Chinese_Simplified
    case Chinese_Traditional
    case Corsican
    case Croatian
    case Czech
    case Danish
    case Dutch
    case English
    case Esperanto
    case Estonian
    case Filipino
    case Finnish
    case French
    case Frisian
    case Galician
    case Georgian
    case German
    case Greek
    case Gujarati
    case Haitian_Creole
    case Hausa
    case Hawaiian
    case Hebrew
    case Hindi
    case Hmong
    case Hungarian
    case Icelandic
    case Igbo
    case Indonesian
    case Irish
    case Italian
    case Japanese
    case Javanese
    case Kannada
    case Kazakh
    case Khmer
    case Korean
    case Kurdish_Kurmanji
    case Kyrgyz
    case Lao
    case Latin
    case Latvian
    case Lithuanian
    case Luxembourgish
    case Macedonian
    case Malagasy
    case Malay
    case Malayalam
    case Maltese
    case Maori
    case Marathi
    case Mongolian
    case Myanmar_Burmese
    case Nepali
    case Norwegian
    case Pashto
    case Persian
    case Polish
    case Portuguese
    case Punjabi
    case Romanian
    case Russian
    case Samoan
    case Scots_Gaelic
    case Serbian
    case Sesotho
    case Shona
    case Sindhi
    case Sinhala
    case Slovak
    case Slovenian
    case Somali
    case Spanish
    case Sundanese
    case Swahili
    case Swedish
    case Tajik
    case Tamil
    case Telugu
    case Thai
    case Turkish
    case Ukrainian
    case Urdu
    case Uzbek
    case Vietnamese
    case Welsh
    case Xhosa
    case Yiddish
    case Yoruba
    case Zulu
    
    var code: String{
        switch self {
        case .Automatic: return "auto"
        case .Afrikaans: return "af"
        case .Albanian: return "sq"
        case .Amharic: return "am"
        case .Arabic: return "ar"
        case .Armenian: return "hy"
        case .Azerbaijani: return "az"
        case .Basque: return "eu"
        case .Belarusian: return "be"
        case .Bengali: return "bn"
        case .Bosnian: return "bs"
        case .Bulgarian: return "bg"
        case .Catalan: return "ca"
        case .Cebuano: return "ceb"
        case .Chichewa: return "ny"
        case .Chinese_Simplified: return "zh-cn"
        case .Chinese_Traditional: return "zh-tw"
        case .Corsican: return "co"
        case .Croatian: return "hr"
        case .Czech: return "cs"
        case .Danish: return "da"
        case .Dutch: return "nl"
        case .English: return "en"
        case .Esperanto: return "eo"
        case .Estonian: return "et"
        case .Filipino: return "tl"
        case .Finnish: return "fi"
        case .French: return "fr"
        case .Frisian: return "fy"
        case .Galician: return "gl"
        case .Georgian: return "ka"
        case .German: return "de"
        case .Greek: return "el"
        case .Gujarati: return "gu"
        case .Haitian_Creole: return "ht"
        case .Hausa: return "ha"
        case .Hawaiian: return "haw"
        case .Hebrew: return "iw"
        case .Hindi: return "hi"
        case .Hmong: return "hmn"
        case .Hungarian: return "hu"
        case .Icelandic: return "is"
        case .Igbo: return "ig"
        case .Indonesian: return "id"
        case .Irish: return "ga"
        case .Italian: return "it"
        case .Japanese: return "ja"
        case .Javanese: return "jw"
        case .Kannada: return "kn"
        case .Kazakh: return "kk"
        case .Khmer: return "km"
        case .Korean: return "ko"
        case .Kurdish_Kurmanji: return "ku"
        case .Kyrgyz: return "ky"
        case .Lao: return "lo"
        case .Latin: return "la"
        case .Latvian: return "lv"
        case .Lithuanian: return "lt"
        case .Luxembourgish: return "lb"
        case .Macedonian: return "mk"
        case .Malagasy: return "mg"
        case .Malay: return "ms"
        case .Malayalam: return "ml"
        case .Maltese: return "mt"
        case .Maori: return "mi"
        case .Marathi: return "mr"
        case .Mongolian: return "mn"
        case .Myanmar_Burmese: return "my"
        case .Nepali: return "ne"
        case .Norwegian: return "no"
        case .Pashto: return "ps"
        case .Persian: return "fa"
        case .Polish: return "pl"
        case .Portuguese: return "pt"
        case .Punjabi: return "ma"
        case .Romanian: return "ro"
        case .Russian: return "ru"
        case .Samoan: return "sm"
        case .Scots_Gaelic: return "gd"
        case .Serbian: return "sr"
        case .Sesotho: return "st"
        case .Shona: return "sn"
        case .Sindhi: return "sd"
        case .Sinhala: return "si"
        case .Slovak: return "sk"
        case .Slovenian: return "sl"
        case .Somali: return "so"
        case .Spanish: return "es"
        case .Sundanese: return "su"
        case .Swahili: return "sw"
        case .Swedish: return "sv"
        case .Tajik: return "tg"
        case .Tamil: return "ta"
        case .Telugu: return "te"
        case .Thai: return "th"
        case .Turkish: return "tr"
        case .Ukrainian: return "uk"
        case .Urdu: return "ur"
        case .Uzbek: return "uz"
        case .Vietnamese: return "vi"
        case .Welsh: return "cy"
        case .Xhosa: return "xh"
        case .Yiddish: return "yi"
        case .Yoruba: return "yo"
        case .Zulu: return "zu"
        }
    }
}
