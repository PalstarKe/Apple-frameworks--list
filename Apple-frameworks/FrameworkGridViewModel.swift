//
//  FrameworkGridViewModel.swift
//  Apple-frameworks
//
//  Created by 'Codevibe' on 26/01/2024.
//

import SwiftUI

class FrameworkGridViewModel: ObservableObject{
    var selectedFramework: Framework? {
        didSet{
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
