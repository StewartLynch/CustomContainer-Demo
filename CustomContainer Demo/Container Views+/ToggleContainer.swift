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

struct ToggleContainer<Content: View>: View {
    @State private var isExpanded = false
    let label: String
    let content: Content
    init(label: String, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.label = label
    }
    var body: some View {
        VStack(alignment: .leading){
            Toggle(label, isOn: $isExpanded)
                .font(.headline)
                .padding(.bottom, 5)
            if isExpanded {
                content
                    .transition(.opacity)
            }
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(10)
        .animation(.default, value: isExpanded)
    }
}

#Preview {
    ToggleContainer(label: "Hello") {
        Text("This is some text")
        Text("Here is more text")
    }
}
