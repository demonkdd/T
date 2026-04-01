//
//  CCFinalQuizView.swift
//  T
//
//  Created by Cameron Slaughter on 4/1/26.
//

import SwiftUI

struct CCFinalQuizView: View {
    @StateObject private var vm = QuizViewModel(questions: [])
    @State private var showingConfirmation = false
    @State private var backgroundColor: Color = .white
    @State private var quiz: QuizViewModel?
    @State private var testTopic = Topic(name: "Credit Compass Final")
    @State private var testQuestions: [QuizQuestions] = []
    var body: some View {
        NavigationStack {
            ZStack {
                Image("DWC Background EXP")
                    .ignoresSafeArea()
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
}

#Preview {
    CCFinalQuizView()
}
