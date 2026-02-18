//
//  QuizInfo.swift
//  T
//
//  Created by Cameron Slaughter on 2/16/26.
//

import Foundation

@Observable
class Info: Codable {
    enum CodingKeys: String, CodingKey {
        case _type = "type"
        case _quantity = "quantity"
        
        
    }
    static let types = ["Yes","Kinda","No"]
    
    var type = 0
    var quantity = 3
    
//    var specialRequestEnabled = false {
//        didSet {
//            
//            }
//        }
    }
    

