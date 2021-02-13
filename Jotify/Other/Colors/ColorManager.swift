//
//  ColorManager.swift
//  Jotify
//
//  Created by Harrison Leath on 2/1/21.
//

import UIKit

class ColorManager {
    
    static var noteColor: UIColor = .systemBlue
    static var indexes = [Int]()

    //a static instance of ColorManager must be created to persist the value of indexes
    //fill an array of indexes that correspond to the array as a parameter
    //remove elements from indexes array as they are selected from parameter array
    //repeat when indexes is empty
    static func setNoteColor(theme: Array<UIColor>) {
        if ColorManager.indexes.count == 0 {
//            print("Filling indexes array")
            ColorManager.indexes = Array(0..<theme.count)
        }
        let randomIndex = Int(arc4random_uniform(UInt32(ColorManager.indexes.count)))
        let anIndex = ColorManager.indexes.remove(at: randomIndex)
        ColorManager.noteColor = theme[anIndex]
    }
}