//
//----------------------------------------------
// Original project: CustomContainer Demo
// by  Stewart Lynch on 2025-03-23
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

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("ContainerView", systemImage: "1.circle.fill") {
                SimpleCustomContainer()
            }
            Tab("ViewModifier", systemImage: "2.circle.fill") {
                CustomViewModifier()
            }
            Tab("State", systemImage: "3.circle.fill") {
                StateContainerView()
            }
            Tab("Action", systemImage: "4.circle.fill") {
                ActionContainerView()
            }
        }
    }
}

#Preview {
    ContentView()
}


