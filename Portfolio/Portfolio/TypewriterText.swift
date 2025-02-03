//
//  TypewriterText.swift
//  Portfolio
//
//  Created by srijan vikram on 2/2/25.
//


import SwiftUI

struct TypewriterText: View {
    let text: String
    let font: Font
    @State private var displayedText: String = ""
    @State private var currentIndex: Int = 0
    let timer = Timer.publish(every: 0.3, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text(displayedText)
            .font(font)
            .onReceive(timer) { _ in
                guard currentIndex < text.count else {
                    timer.upstream.connect().cancel()
                    return
                }
                let index = text.index(text.startIndex, offsetBy: currentIndex)
                displayedText += String(text[index])
                currentIndex += 1
            }
    }
}

struct TypewriterText_Previews: PreviewProvider {
    static var previews: some View {
        TypewriterText(text: "Srijan Vikram", font: .largeTitle)
    }
}
