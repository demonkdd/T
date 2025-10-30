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
            .frame(width: 350)
            .textFieldStyle(.roundedBorder)
            .cornerRadius(4)
            .fixedSize(horizontal: true, vertical: false)
    }
}
extension View {
    func vibrantCard() -> some View {
        self.modifier(VibrantCardModifier())
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
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var address = ""
    @State private var phoneNumber = ""
    @State private var email = ""
    @State private var bank = ""
    @State private var question2 = ""
    @State private var question3 = ""
    @State private var question4 = ""
    @State private var question5 = ""
    
    
    var body: some View {
        VStack {
            TextField("First Name", text: $firstName)
                .vibrantCard()
            TextField("Last Name", text: $lastName)
                .vibrantCard()
            TextField("Address", text: $address)
                .vibrantCard()
            TextField("Phone Number", text: $phoneNumber)
                .vibrantCard()
            TextField("Email", text: $email)
                .vibrantCard()
            TextField("Bank", text: $bank)
                .vibrantCard()
            
            
        }
        .padding()
        Button("Submit") {
            checkIsConnectedToNetworkd()
        }
    }
}

#Preview {
    ContentView()
}



