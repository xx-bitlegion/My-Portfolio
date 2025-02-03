//
//  MyClicksView.swift
//  Portfolio
//
//  Created by srijan vikram on 2/3/25.
//


import SwiftUI

struct MyClicksView: View {
    // Sample data for images and titles
    let clicks: [(imageName: String, title: String)] = [
        ("photo1", "Sunset Boulevard"),
        ("photo2", "Mountain Peaks"),
        ("photo3", "City Lights"),
        ("photo4", "Serene Lake")
    ]
    
    var body: some View {
        ZStack {
            // Pleasing Gradient Background
            LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.3), .purple.opacity(0.3)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(clicks, id: \.title) { click in
                        VStack {
                            Image(click.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200)
                                .clipped()
                                .cornerRadius(10)
                            
                            Text(click.title)
                                .font(.headline)
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle("My Clicks", displayMode: .inline)
    }
}

struct MyClicksView_Previews: PreviewProvider {
    static var previews: some View {
        MyClicksView()
    }
}