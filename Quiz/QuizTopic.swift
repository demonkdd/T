//
//  QuizTopic.swift
//  T
//
//  Created by Cameron Slaughter on 1/12/26.
//

import Foundation
import SwiftUI

struct TopicReviewView: View {
    let topic: Topic
    
    var body: some View {
        NavigationStack {
            VStack {
                Label(topic.name, systemImage: "questionmark.circle")
                
                Text("Hello")
                
                Spacer()
                
                NavigationLink(destination: Home()) {
                    Text("Start Quiz")
                }
            }
        }
    }
}
