import SwiftUI
import UIKit

struct AboutMeView: View {
    var body: some View {
        ZStack {
            // Soothing Gradient Background
            LinearGradient(gradient: Gradient(colors: [.blue.opacity(0.3), .purple.opacity(0.3)]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("About Me")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .foregroundColor(Color(hue: 0.613, saturation: 0.757, brightness: 0.7))
                        .shadow(radius: 2)
                        .padding(.top, 50)
                    
                    Text("I am Srijan Vikram, a passionate software developer who's trying his hands-on in iOS app development.                                                             I work at Blue Copper Technologies. This is a glimpse of my personal project.")
                        .multilineTextAlignment(.leading)
                    
                    Text("Hobbies")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.169, green: 0.341, blue: 0.702))
                        .shadow(radius: 2)
                        .padding(.top, 20)
                    
                    Text("In my free time, I love to do photography, and write poems. Below is a button to some of my shots. Hope you'll love them !!")
                    
                    Text("Connect with me")
                        .font(.system(size: 28, weight: .bold, design: .rounded))
                        .foregroundColor(Color(red: 0.169, green: 0.341, blue: 0.702))
                        .shadow(radius: 2)
                        .padding(.top, 10)
                    
                    HStack {
                        Link("LinkedIn", destination: URL(string: "https://www.linkedin.com/in/srijan-vikram-4b0a291ba/")!)
                            .padding(.leading, 5)
                            .foregroundColor(.blue)
                            .underline()
                        
                        Link("Instagram", destination: URL(string: "https://www.instagram.com/srijanvikram20/")!)
                            .padding(.leading, 70)
                            .foregroundColor(.blue)
                            .underline()
                    }
                    
                    Spacer()
                    
                    // Added "My Clicks" Button
                    NavigationLink(destination: MyClicksView()) {
                        Text("My Clicks")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .frame(width: 180.0)
                            .cornerRadius(10)
                            .padding(.leading, 85.0)
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle("About Me", displayMode: .inline)
    }
}

struct AboutMeView_Previews: PreviewProvider {
    static var previews: some View {
        AboutMeView()
    }
}
