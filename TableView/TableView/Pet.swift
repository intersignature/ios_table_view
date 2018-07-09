//
//  Pet.swift
//  TableView
//
//  Created by Sirichai Binchai on 9/7/2561 BE.
//  Copyright © 2561 Sirichai Binchai. All rights reserved.
//

import Foundation
import UIKit

class Pet {
    private var _name = ""
    var detail = ""
    var picture = UIImage()
    
    var name:String {
        get {return _name}
        set {_name = newValue}
    }
    
    init(name:String, detail:String, picture:UIImage) {
        self.name = name
        self.detail = detail
        self.picture = picture
    }
    
    init(name:String, detail:String) {
        self.name = name
        self.detail = detail
        self.picture = UIImage(named: "tiger")!
    }
    
    init() {}
}
