//
//  FrameworkDetailView.swift
//  Apple_Frameworks
//
//  Created by Hassen Abdurahman Yahia on 2023-09-27.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @Binding var isShowingModel: Bool
    @State private var isShowingSafirView = false
    
    var body: some View {
        
        VStack {
            Spacer()
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            
            Button {
               isShowingSafirView = true
                
            }label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafirView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "WWW.apple.com")!)
        })
      
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework,isShowingModel:  .constant(false))
            .preferredColorScheme(.dark)
    }
}
