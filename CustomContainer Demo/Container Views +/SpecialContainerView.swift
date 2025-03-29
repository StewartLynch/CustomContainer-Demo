//
//----------------------------------------------
// Original project: CustomContainer Demo
// by  Stewart Lynch on 2025-03-29
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

struct SpecialContainerView<Content: View>: View {
    var bgColor: Color = .blue
    var fgColor: Color = .white
    var sfSymbol: String = "star"
    @ViewBuilder let content: Content
   
    var body: some View {
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

#Preview {
    SpecialContainerView {
        Text("Sample View")
        Text("More Text")
    }
}
