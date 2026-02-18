//
//  Home.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import Foundation
import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.DWCGreen
                    .ignoresSafeArea()
                VStack {
                    
                    Image("DWC Logo for SR")
                        .resizable()
                        .scaledToFit()
                        .frame(height:300)
                        .padding()
                    NavigationLink(destination: ContentView()){
                        Text("I'm a Member")
                    }
                    .buttonStyle(DWCButton())
                    NavigationLink(destination: GuestView()){
                        Text("I'm New")
                    }
                    .buttonStyle(DWCButton())
                }
            }
        }
    }
}

#Preview {
    Home()
}
//hi 1
