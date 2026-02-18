//
//  QuizModel.swift
//  T
//
//  Created by Cameron Slaughter on 1/12/26.
//

import Foundation
import SwiftUI
internal import Combine

class QuizManager: ObservableObject {
    
    @Published var topicScores: [String: Double] = [:]
    @Published var isCompleted = false
    
    func symbolForTopic( _ topic: String) -> String {
        switch topic {
        case "ECB Intro": return "📚"
        case "ECB Mid": return "📚"
        case "ECB Final": return "🎉"
        default: return "questionmark"
        }
    }
    
    func updateScore(for topic: String, correctAnswers: Int, totalQuestions: Int) {
        let score = Double(correctAnswers) / Double(totalQuestions)
        topicScores[topic] = score
    }
}
