//
//  FrameworkGridViewModel.swift
//  Apple_Frameworks
//
//  Created by Hassen Abdurahman Yahia on 2023-09-30.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework?{
        didSet { isShowingModel = true }
    }
    
    @Published var isShowingModel = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
