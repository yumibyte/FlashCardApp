//
//  Flashcard.swift
//  FlashCardApp
//
//  Created by Ashley Raigosa on 9/9/19.
//  Copyright © 2019 Ashley Raigosa. All rights reserved.
//

import Foundation
import RealmSwift

class Flashcard: Object {
    @objc dynamic var term: String = ""
    @objc dynamic var definition: String = ""
    
}


