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
            VStack {
                NavigationLink(destination: ContentView()){
                    Text("I'm a Membmer")
                }
                NavigationLink(destination: GuestSurvey()){
                    Text("I'm New")
                }
            }
        }
    }
}
//hi 1
