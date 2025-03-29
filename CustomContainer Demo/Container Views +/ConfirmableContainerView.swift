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

enum Status {
    case empty, incomplete, complete
}

struct ConfirmableContainerView<Content: View>: View {
    @Binding var status: Status
    @ViewBuilder let content: Content
    var confirmAction: () -> Void
    var cancelAction: () -> Void
    var body: some View {
        VStack(spacing: 20){
            content
            HStack {
                Button("Cancel", role: .destructive) {
                    cancelAction()
                }
                .disabled(status == .empty)
                Spacer()
                Button("Confirm") {
                    confirmAction()
                }
                .disabled([Status.empty, Status.incomplete].contains(status))
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 10)
        }
        .padding()
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .padding(.horizontal)
    }
}

#Preview {
    ConfirmableContainerView(status: .constant(.empty)) {
        Text("Header Text")
        Text("Sub Header")
    } confirmAction: {
        
    } cancelAction: {
        
    }

}
