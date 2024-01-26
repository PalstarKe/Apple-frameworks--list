//
//  XDismissButton.swift
//  Apple-frameworks
//
//  Created by kejos on 26/01/2024.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            }label: {
                Image(systemName: "xmark")
                    .foregroundStyle(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
