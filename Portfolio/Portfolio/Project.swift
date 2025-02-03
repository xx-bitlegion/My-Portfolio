//
//  Project.swift
//  Portfolio
//
//  Created by srijan vikram on 2/2/25.
//


import SwiftUI

struct Project: Identifiable {
    let id = UUID()
    let name: String
    let imageName: String
    let githubURL: URL
}

struct ProjectsView: View {
    let projects = [
        Project(name: "Time Zone Convertor", imageName: "project1", githubURL: URL(string: "https://github.com/xx-bitlegion/World-Time-Zone-Convertor")!),
        Project(name: "Caesar-Cipher", imageName: "project2", githubURL: URL(string: "https://github.com/xx-bitlegion/Caesar-Cipher")!),
        // Add more projects as needed
    ]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            // Soothing Gradient Background
            LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.8), .cyan.opacity(0.9), .teal.opacity(0.2)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(projects) { project in
                        VStack(spacing: 20.0) {
                            Image(project.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 150, height: 150)
                                .clipped()
                                .cornerRadius(10)
                            
                            Text(project.name)
                                .font(.body)
                                .fontWeight(.medium)
                                .lineLimit(2)
                                
                            
                            Link("GitHub", destination: project.githubURL)
                                .foregroundColor(.blue)
                                .underline()
                        }
                        .padding()
                        .background(Color(hue: 0.548, saturation: 0.525, brightness: 0.898))
                        .cornerRadius(12)
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle("Projects", displayMode: .inline)
    }
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        ProjectsView()
    }
}
