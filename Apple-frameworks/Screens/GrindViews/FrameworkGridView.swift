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
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                        }
                    }
                }
            }
            .navigationTitle("🍏 Frameworks Hub")
            .sheet(isPresented: $viewModel.isShowingDetailView){
                FrameworkDetailView(isShowingDetailView: $viewModel.isShowingDetailView, framework: viewModel.selectedFramework ?? MockData.sampleFramework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}


