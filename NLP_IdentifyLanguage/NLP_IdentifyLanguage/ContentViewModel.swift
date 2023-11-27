//
//  ContentViewModel.swift
//  NLP_IdentifyLanguage
//
//  Created by Manish on 23/11/23.
//

import Foundation
import NaturalLanguage


class ContentViewModel: ObservableObject {
    
    @Published private(set) var foundLanguage = "--"
    let txt = "ये हिंदी है"
    //let txt = "これは日本人です"
    //let txt = "This is english."
    
    private let recognizer = NLLanguageRecognizer()
    
    func identify() {
        recognizer.reset()
        recognizer.processString(txt)
        
        foundLanguage = recognizer.dominantLanguage?.rawValue ?? "NA"
        
    }
    
}
