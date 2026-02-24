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
    

struct AnswerPayload: Codable {
    let userId: String
    let questionId: String
    let answerText: String
    let createdAt: Date
}
//
//func sendAnswer(_answer: AnswerPayload) async throws {
//    let url = URL(string: "api here")!
//    var request = URLRequest(url: url)
//    request.httpMethod = "POST"
//    request.setValue("application/json", forHTTPHeaderField: <#T##String#>)
//    request.httpBody = try JSONEncoder().encode(_answer)
//    
//    let (_, response) = try await URLSession.shared.data(for: request)
//    guard (response as? HTTPURLResponse)?.statusCode == 200 else {
//        throw URLError(.badServerResponse)
//    }
//}
