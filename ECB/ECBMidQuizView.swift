//
//  ECBMidQuizView.swift
//  T
//
//  Created by Cameron Slaughter on 3/17/26.
//

import Foundation
import SwiftUI

struct ECBMidQuizView: View {
    @StateObject private var vm = QuizViewModel(questions: [])
    @State private var showingConfirmation = false
    @State private var backgroundColor: Color = .white
    @State private var quiz: QuizViewModel?
    @State private var testTopic = Topic(name: "ECB Mid")
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
    ECBMidQuizView()
}
