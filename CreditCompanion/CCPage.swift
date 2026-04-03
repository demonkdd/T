//
//  CCPage.swift
//  T
//
//  Created by Cameron Slaughter on 4/1/26.
//

import SwiftUI

struct CCPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("DWC Background EXP")
                    .ignoresSafeArea()
                VStack {
                    NavigationLink("Credit Compass Intro", destination: CCIntroQuizView())
                    
                    NavigationLink("Credit Compass Mid", destination: CCMidQuizView())
                    
                    NavigationLink("Credit Compass Final", destination: CCFinalQuizView())
                }
                .buttonStyle(DWCButton())
            }
        }
    }
}

#Preview {
    CCPage()
}
