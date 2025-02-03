//
//  ContentView.swift
//  Portfolio
//
//  Created by srijan vikram on 2/2/25.
//


import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Soothing Gradient Background
                LinearGradient(gradient: Gradient(colors: [.teal.opacity(0.7), .indigo.opacity(0.5)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 31) {
                    // Typewriter Animation for Name
                    TypewriterText(text: "Srijan Vikram", font: .largeTitle)
                        .padding(.top, 70)
                    
                    // Welcome Message
                    Text("Welcoming all geeky-heads to my portfolio.\nBy clicking the button below, Let's begin the journey.")
                        .multilineTextAlignment(.center)
                        .padding(.top, 100)
                    
                    // LinkedIn Hyperlink
                    Link("Connect with me on LinkedIn", destination: URL(string: "https://www.linkedin.com/in/srijan-vikram-4b0a291ba/")!)
                        .padding(.top, 80)
                        .foregroundColor(.blue)
                        .underline()
                    
                    Spacer()
                    
                    // Navigation Buttons
                    HStack(spacing: 40) {
                        NavigationLink(destination: ProjectsView()) {
                            Text("View Projects")
                                .foregroundColor(Color.black)
                                .padding()
                                .background(Color.indigo.opacity(0.22))
                                .cornerRadius(100)
                        }
                        
                        NavigationLink(destination: AboutMeView()) {
                            Text("About Me")
                                .foregroundColor(Color.black)
                                .padding()
                                .background(Color.indigo.opacity(0.22))
                                .cornerRadius(100)
                        }
                    }
                    .padding(.bottom, 160)
                }
            }
            .navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
