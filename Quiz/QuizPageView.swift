//
//  QuizPageView.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import Foundation
import SwiftUI
internal import Combine



struct QuizPageView: View {
    @StateObject private var vm = QuizViewModel(questions: [])
    @State private var showingConfirmation = false
    @State private var testQuiz: QuizQuestions?
    @State private var testTopic = Topic(name: "ECB Intro")
    @State private var testQuestions: [QuizQuestions] = []
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                
                Image(systemName: "lightbulb.max.fill")
                    
                
                RoundedRectangle (cornerRadius: 20)
                    .fill(Color.blue)
                    .frame(width: 350, height: 50)
                    .overlay {
                        Button("Start Survey") {
                            showingConfirmation.toggle()
                            vm.questions = testQuestions
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .confirmationDialog("Are you ready for the survey", isPresented: $showingConfirmation) {
                            NavigationLink(destination: QuizView(topic: testTopics[0], viewModel: vm)) {
                                Text("Begin")
                            }
                            Button("Cancel", role: .cancel) { }
                        }
                    }
                    .onAppear{
                        testQuestions = QuizDatabase.getQuestions(for: testTopic)
                    }
            }
        }
    }
}


//bueno 1

