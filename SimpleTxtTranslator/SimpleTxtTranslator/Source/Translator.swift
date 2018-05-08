//
//  Translator.swift
//  SimpleTxtTranslator
//
//  Created by camila oliveira on 08/05/18.
//  Copyright © 2018 Aliamcami. All rights reserved.
//

import UIKit

public extension String{
    public func translate(from sourceLang: Language = .Automatic, to targetLang: Language, onCompletion: @escaping (String)->()){
        let sourceText = addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)
        let url = "https://translate.googleapis.com/translate_a/single?client=gtx&sl=\(sourceLang.code)&tl=\(targetLang.code)&dt=t&q=\(sourceText ?? "")"
        
        
        let request = NSMutableURLRequest(url: URL.init(string: url)!)
        let session = URLSession.shared
        
        let task = session.dataTask(with: request as URLRequest, completionHandler: {data, response, err -> Void in
            do{
                let obj = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments) as AnyObject
                let arr = (obj.firstObject as! [[AnyObject]])
                onCompletion(arr[0][0] as? String ?? self)
            }catch{
                onCompletion(self)
            }
        })
        task.resume()
    }
}
