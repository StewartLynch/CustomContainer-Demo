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

struct ActionContainerView: View {
    @State private var name: String = ""
    @State private var age: Int?
    @State private var formSubmitted = false
    
    var body: some View {
        NavigationStack{
            VStack {
                if !formSubmitted {
                    Form {
                        TextField("name", text: $name)
                        TextField("age", value: $age, format: .number)
                    }
                } else {
                    Text("✅ Form Submitted")
                }
            }
            .navigationTitle("Action ContainerView")
        }
        
    }
}

#Preview {
    ActionContainerView()
}
