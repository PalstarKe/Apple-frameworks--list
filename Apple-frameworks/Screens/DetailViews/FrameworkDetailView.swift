//
//  FrameworkDetailView.swift
//  Apple-frameworks
//
//  Created by `Codevibe` on 25/01/2024.
//

import SwiftUI


struct FrameworkDetailView: View {
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView = false
    let framework: Framework
    
    var body: some View {
        VStack{
            Spacer()
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button{
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book-fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(isShowingDetailView: .constant(false), framework: MockData.sampleFramework)
//        .preferredColorScheme(.dark)
}
