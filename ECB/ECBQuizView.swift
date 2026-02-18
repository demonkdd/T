//
//  ECBQuizView.swift
//  T
//
//  Created by Cameron Slaughter on 1/21/26.
//

import SwiftUI

struct ECBQuizView: View {
    @StateObject private var vm = QuizViewModel(questions: [])
    @State private var showingConfirmation = false
    @State private var backgroundColor: Color = .white
    @State private var quiz: QuizViewModel?
    @State private var testTopic = Topic(name: "ECB Intro")
    @State private var testQuestions: [QuizQuestions] = []
    var body: some View {
        NavigationStack {
            VStack {
                Button("Take Quiz") {
                    showingConfirmation = true
                    vm.questions = testQuestions
                }
                .buttonStyle(DWCButton())
                .confirmationDialog("Start Survey?", isPresented: $showingConfirmation) {
                    NavigationLink("begin", destination: QuizView(topic: testTopics[0], viewModel: vm))
                }
                Button("Cancel", role: .cancel) { }
                    .buttonStyle(DWCButton())
            }
            .onAppear {
                testQuestions = QuizDatabase.getQuestions(for: testTopic)
            }
        }
    }
}

#Preview {
    ECBQuizView()
}
