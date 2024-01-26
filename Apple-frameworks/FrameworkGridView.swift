//
//  ContentView.swift
//  Apple-frameworks
//
//  Created by `Codevibe` on 25/01/2024.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewmodel = FrameworkGridViewModel()
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks){ framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewmodel.selectedFramework = framework
                        }
                    }
                }
            }
            .navigationTitle("🍏 Frameworks Hub")
            .sheet(isPresented: $viewmodel.isShowingDetailView){
                FrameworkDetailView(isShowingDetailView: $viewmodel.isShowingDetailView, framework: viewmodel.selectedFramework ?? MockData.sampleFramework)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
        }
        .padding()
    }
}
