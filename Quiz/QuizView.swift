//
//  QuizView.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import Foundation
import SwiftUI

struct QuizView: View {
    let topic: Topic
    @ObservedObject var viewModel: QuizViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            if !viewModel.isCompleted {
                Text("Question \(viewModel.currentQuestionIndex + 1) of \(viewModel.questions.count)")
                    .font(.headline)
                Text(viewModel.questions[viewModel.currentQuestionIndex].question)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                
                ForEach(viewModel.questions[viewModel.currentQuestionIndex].answers, id: \.self) { option in
                    Button(action: {
                        viewModel.answerQuestion(with: option)
                    }) {
                        Text(option)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .cornerRadius(10)
                        
                    }
                    
                }
            } else {
                VStack {
                    Text("Quiz Complete!")
                        .font(.title)
                    Button("Submit") {
                        Task {
                          
                            await sendInfo(userAnswers: viewModel.userAnswers)
                        }
                    }
                }
            }
        }
    }
}
func sendInfo(userAnswers:[String]) async {
    guard let encoded = try? JSONEncoder().encode(userAnswers) else {
        print("Failed to send info")
        return
    }
    let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
    var request = URLRequest(url: url)
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    request.httpMethod = "POST"
    
    do {
        let (data, _) = try await URLSession.shared.upload(for: request, from: encoded)
        
        let decodedInfo = try JSONDecoder().decode([String].self, from: data)
        
    } catch  {
        print("Failed to send Data: \(error.localizedDescription)")
    }
    
}

//hadouken 1

