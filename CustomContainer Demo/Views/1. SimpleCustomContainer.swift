//
//----------------------------------------------
// Original project: CustomContainer Demo
// by  Stewart Lynch on 2025-03-24
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

struct SimpleCustomContainer: View {
    var body: some View {
        NavigationStack {
            VStack {
                SpecialContainerView {
                    Text("Custom Container Example")
                    Text("Another Text View")
                }
                SpecialContainerView(
                    bgColor: .red,
                    fgColor: .yellow,
                    sfSymbol: "applelogo") {
                        Text("Hello Apple")
                            .font(.largeTitle)
                        Link("Apple Website", destination: URL(string: "https://apple.com")!)
                    }
            }
            .navigationTitle("Custom Container")
        }
    }
}

#Preview {
    SimpleCustomContainer()
}
