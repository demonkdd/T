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
                Color.DWCRed
                    .ignoresSafeArea()
                VStack {
                    NavigationLink("ECB Intro", destination: ECBQuizView())
                }
                .buttonStyle(DWCButton())
            }
        }
    }
}

#Preview {
    ECBPage()
}
