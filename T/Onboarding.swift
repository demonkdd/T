//
//  Onboarding.swift
//  T
//
//  Created by Cameron Slaughter on 12/15/25.
//

import Foundation
import SwiftUI

struct Onboarding: View {
    var body: some View {
        ZStack {
            Image("DWC Background EXP")
            
            VStack {
                Label("Disclaimer", systemImage: "DWClogo2ndpage")
                Text("""
                    The information provided on this website and app (detroitwealthclub.org "Detroit Wealth Club") is for educational purposes only and does not consitute financial. investment, tax, or legal advice. All actions you take based on this information are at your own risk, and Detroit Wealth Club is not liable for any losses or damages resulting from the use of this information.
                    The information provided on this website and app (detroitwealthclub.org "Detroit Wealth Club") is for general informational and educational purposes only. Nothing contained here constitues financial, investment, legal, or tax advice. Detroit Wealth Club makes no representations or warranties of any king, express or implied, regarding the accuracy, completeness, reliability, suitability, or availability of any information, products or services referenced.
                    All decisions you make based on the information provided are strictly at your own risk. You should consult with a qualified professional before making any financial or investment decisions. Detroit Wealth Club is not responsible for any losses, damages, or adverse outcomes resulting from reliance on any content, tools, or resources provided.
                    By using this website or app (detroitwealthclub.org, "Detroit Wealth Club"), you acknowledge and agree that all content is provided "as-is" for general informational purposes only. Detroit Wealth Club does not guarantee the accuracy, performance, or results of any information, tools, or materials provided. Your use of this platform is voluntary and entirely at your own risk. Detroit Wealth club is not liable for any damages, losses, or consequences arising from your use of the platform or reliance on its content.
                    This is a concise and effective message for users who are new to the app:
                                                                    Notice:
                    Detroit Wealth Club privides educational content only. Please note that nothing in this app should be considered financial or investment advice. By continuing to use the app, you agree to use the information at your own risk and acknowledge that Detroit Wealth Club is not liable for any financial decisions you make.
                    """)
            }
            VStack {
                Button("Next") {
                    
                }
            }
        }
    }
}


#Preview {
    Onboarding()
}
//hola 1
