//
//  QuizManager.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import SwiftUI
import Foundation

struct QuizManagerView: View {
    @StateObject private var vm = QuizViewModel(questions: [])
    @State private var showingConfirmation = false
    @State private var backgroundColor = Color.white
    @State private var quiz: QuizQuestions?
    @State private var testTopic = Topic(name: "Intro")
    @State private var testQuestions: [QuizQuestions] = []
    var body: some View {
        NavigationStack {
            VStack(spacing: 100) {
                Image(systemName: "")
                
                
                RoundedRectangle (cornerRadius: 20)
            }
        }
    }
}

//ciao 1
