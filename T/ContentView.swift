//
//  ContentView.swift
//  T
//
//  Created by Cameron Slaughter on 10/28/25.
//

import SwiftUI
import SQLite3


struct VibrantCardModifier: ViewModifier {
    func body(content: Content) -> some View {
       content
            .frame(width: 300)
            .textFieldStyle(.roundedBorder)
            .cornerRadius(20)
            .fixedSize(horizontal: true, vertical: false)
            .foregroundColor(Color.DWCOnyx)
    }
}
extension View {
    func vibrantCard() -> some View {
        self.modifier(VibrantCardModifier())
    }
}

struct DWCButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("ButtonColor1"))
            .foregroundStyle(Color.white)
            .buttonBorderShape(.roundedRectangle(radius: 18))
            .frame(width: 280, height: 65)
            
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

func checkIsConnectedToNetworkd() {
    let hostUrL: String = "https://google.com"
    if let url = URL(string: hostUrL) {
        var request = URLRequest(url: url)
        request.httpMethod = "HEAD"
        URLSession(configuration: .default)
            .dataTask(with: request) { (_, response, error) -> Void in
                guard error == nil  else {
                    print("Error:", error ?? "")
                    return
                }
                guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                    print("The host is down")
                    return
                }
                print("The host is up and running")
            }
            .resume()
    }
}

struct ContentView: View {
    
    
    
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("DWC Background EXP")
                    .ignoresSafeArea()
                VStack {
                    NavigationLink("Entrepreneur Credit BluePrint", destination: ECBPage())
                    
                    NavigationLink("Credit Compass", destination: CCPage())
                }
                .buttonStyle(DWCButton())
                .padding()
//                Button("Submit") {
//                    checkIsConnectedToNetworkd()
//                }
//                .buttonStyle(DWCButton())
            }
        }
    }
}

#Preview {
    ContentView()
}


//lmfao
