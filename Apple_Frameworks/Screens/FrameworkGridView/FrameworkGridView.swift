//
//  FrameworkGridView.swift
//  Apple_Frameworks
//
//  Created by Hassen Abdurahman Yahia on 2023-09-23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel ()
    
   
    
    var body: some View {
        NavigationView {
            
               List {
            ForEach(MockData.frameworks) { framework in
                NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingModel: $viewModel.isShowingModel)){
                    FrameworkTitleView(framework: framework)
                   }
                }
            }
        
            .navigationTitle("🍎 Frameworks")
         }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}




