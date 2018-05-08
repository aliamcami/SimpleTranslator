//
//  ViewController.swift
//  SimpleTxtTranslator
//
//  Created by camila oliveira on 08/05/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var langPickerView: UIPickerView!
    
    @IBOutlet weak var sourceTextField: UITextView!
    @IBOutlet weak var translatedField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        allLangs = getAllLanguages().sorted(by: { (l1, l2) -> Bool in
            return languageDescription(lang: l1) < languageDescription(lang: l2)
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func translateButtonClicked(_ sender: Any) {
        (sender as? UIButton)?.isUserInteractionEnabled = false
        let destinationLang = allLangs[langPickerView.selectedRow(inComponent: 0)]
        sourceTextField.text.translate(to: destinationLang) { (str) in
            DispatchQueue.main.async {
                self.translatedField.text = str
                (sender as? UIButton)?.isUserInteractionEnabled = true
            }
        }
    }
    
    fileprivate func getAllLanguages()-> [Language]{
        var langs = [Language]()
        var count = 0
        while let tmp = Language(rawValue: count){
            langs.append(tmp)
            count += 1
        }
        return langs
    }
    fileprivate var allLangs = [Language]()
    
    func languageDescription(lang: Language)-> String{
        switch lang {
        case .Automatic: return "Automatic"
        case .Afrikaans: return "Afrikaans"
        case .Albanian: return "Albanian"
        case .Amharic: return "Amharic "
        case .Arabic: return "Arabic "
        case .Armenian: return "Armenian "
        case .Azerbaijani: return "Azerbaijani "
        case .Basque: return "Basque "
        case .Belarusian: return "Belarusian "
        case .Bengali: return "Bengali "
        case .Bosnian: return "Bosnian "
        case .Bulgarian: return "Bulgarian "
        case .Catalan: return "Catalan "
        case .Cebuano: return "Cebuano "
        case .Chichewa: return "Chichewa "
        case .Chinese_Simplified: return "Chinese_Simplified "
        case .Chinese_Traditional: return "Chinese_Traditional "
        case .Corsican: return "Corsican "
        case .Croatian: return "Croatian "
        case .Czech: return "Czech "
        case .Danish: return "Danish "
        case .Dutch: return "Dutch "
        case .English: return "English "
        case .Esperanto: return "Esperanto "
        case .Estonian: return "Estonian "
        case .Filipino: return "Filipino "
        case .Finnish: return "Finnish "
        case .French: return "French "
        case .Frisian: return "Frisian "
        case .Galician: return "Galician "
        case .Georgian: return "Georgian "
        case .German: return "German "
        case .Greek: return "Greek "
        case .Gujarati: return "Gujarati "
        case .Haitian_Creole: return "Haitian_Creole "
        case .Hausa: return "Hausa "
        case .Hawaiian: return "Hawaiian "
        case .Hebrew: return "Hebrew "
        case .Hindi: return "Hindi "
        case .Hmong: return "Hmong "
        case .Hungarian: return "Hungarian "
        case .Icelandic: return "Icelandic "
        case .Igbo: return "Igbo "
        case .Indonesian: return "Indonesian "
        case .Irish: return "Irish "
        case .Italian: return "Italian "
        case .Japanese: return "Japanese "
        case .Javanese: return "Javanese "
        case .Kannada: return "Kannada "
        case .Kazakh: return "Kazakh "
        case .Khmer: return "Khmer "
        case .Korean: return "Korean "
        case .Kurdish_Kurmanji: return "Kurdish_Kurmanji "
        case .Kyrgyz: return "Kyrgyz "
        case .Lao: return "Lao "
        case .Latin: return "Latin "
        case .Latvian: return "Latvian "
        case .Lithuanian: return "Lithuanian "
        case .Luxembourgish: return "Luxembourgish "
        case .Macedonian: return "Macedonian "
        case .Malagasy: return "Malagasy "
        case .Malay: return "Malay "
        case .Malayalam: return "Malayalam "
        case .Maltese: return "Maltese "
        case .Maori: return "Maori "
        case .Marathi: return "Marathi "
        case .Mongolian: return "Mongolian "
        case .Myanmar_Burmese: return "Myanmar_Burmese "
        case .Nepali: return "Nepali "
        case .Norwegian: return "Norwegian "
        case .Pashto: return "Pashto "
        case .Persian: return "Persian "
        case .Polish: return "Polish "
        case .Portuguese: return "Portuguese "
        case .Punjabi: return "Punjabi "
        case .Romanian: return "Romanian "
        case .Russian: return "Russian "
        case .Samoan: return "Samoan "
        case .Scots_Gaelic: return "Scots_Gaelic "
        case .Serbian: return "Serbian "
        case .Sesotho: return "Sesotho "
        case .Shona: return "Shona "
        case .Sindhi: return "Sindhi "
        case .Sinhala: return "Sinhala "
        case .Slovak: return "Slovak "
        case .Slovenian: return "Slovenian "
        case .Somali: return "Somali "
        case .Spanish: return "Spanish "
        case .Sundanese: return "Sundanese "
        case .Swahili: return "Swahili "
        case .Swedish: return "Swedish "
        case .Tajik: return "Tajik "
        case .Tamil: return "Tamil "
        case .Telugu: return "Telugu "
        case .Thai: return "Thai "
        case .Turkish: return "Turkish "
        case .Ukrainian: return "Ukrainian "
        case .Urdu: return "Urdu "
        case .Uzbek: return "Uzbek "
        case .Vietnamese: return "Vietnamese "
        case .Welsh: return "Welsh "
        case .Xhosa: return "Xhosa "
        case .Yiddish: return "Yiddish "
        case .Yoruba: return "Yoruba "
        case .Zulu: return "Zulu "
        }
    }
}

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return allLangs.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return languageDescription(lang: allLangs[row])
    }
    
}

