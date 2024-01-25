//
//  FrameworkDetailView.swift
//  Apple-frameworks
//
//  Created by `Codevibe` on 25/01/2024.
//

import SwiftUI


struct FrameworkDetailView: View {
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
                
            } label: {
               Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(Color.red)
                    .foregroundStyle(Color.white)
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
//        .preferredColorScheme(.dark)
}
