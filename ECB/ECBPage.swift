//
//  ECBPage.swift
//  T
//
//  Created by Cameron Slaughter on 1/21/26.
//

import SwiftUI

struct ECBPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("DWC Background EXP")
                    .ignoresSafeArea()
                VStack {
                    NavigationLink("ECB Intro", destination: ECBQuizView())
                    
                    NavigationLink("ECB Mid", destination: ECBMidQuizView())
                    
                    NavigationLink("ECB Final", destination: ECBFinalQuizView())
                }
                .buttonStyle(DWCButton())
            }
        }
    }
}

#Preview {
    ECBPage()
}
