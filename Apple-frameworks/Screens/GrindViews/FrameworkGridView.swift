//
//  ContentView.swift
//  Apple-frameworks
//
//  Created by `Codevibe` on 25/01/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
           List {
                    ForEach(MockData.frameworks){ framework in
                        NavigationLink(destination: FrameworkDetailView( isShowingDetailView: $viewModel.isShowingDetailView, framework: framework)) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            .navigationTitle("🍏 Frameworks Hub")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}


