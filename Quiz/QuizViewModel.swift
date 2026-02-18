//
//  QuizViewModel.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import Foundation
import SwiftUI
internal import Combine

class QuizViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var userAnswers: [String] = []
    @Published var isCompleted = false
    
    @Published var questions: [QuizQuestions]
    
    init(questions: [QuizQuestions]) {
        self.questions = questions
        self.userAnswers = Array(repeating: "", count: questions.count)
    }
    
    func answerQuestion(with choice: String) {
        guard !isCompleted else { return }
        userAnswers.append(choice)
        currentQuestionIndex = userAnswers.endIndex - 1
        if questions[currentQuestionIndex].correctAnswer.contains(choice) {
        }
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isCompleted = true
        }
    }
    func reset() {
        currentQuestionIndex = 0
        isCompleted = false
        userAnswers = Array(repeating: "", count: questions.count)
        }
}




//you're already dead 1

