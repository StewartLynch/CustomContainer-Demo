//
//----------------------------------------------
// Original project: CustomContainer Demo
// by  Stewart Lynch on 2025-03-26
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions. All rights reserved.


import SwiftUI

struct SpecialViewModifier: ViewModifier {
    let fgColor: Color
    let bgColor: Color
    let sfSymbol: String
    func body(content: Content) -> some View {
        VStack {
            content
            Image(systemName: sfSymbol)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(bgColor.gradient)
        )
        .foregroundStyle(fgColor)
        .shadow(radius: 5)
    }
}

extension View {
    func specialModifier(bgColor: Color = .blue, fgColor: Color = .white, sfSymbol:String = "star") -> some View {
        modifier(SpecialViewModifier(fgColor: fgColor, bgColor: bgColor, sfSymbol: sfSymbol))
    }
}
