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
                Image("DWC Background EXP")
                    .ignoresSafeArea()
                VStack {
                    
                    Image("DWCLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 333,height:333)
                        .padding()
                    Text("Welcome!")
                    Text("Help Shape the Future of DWC")
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
