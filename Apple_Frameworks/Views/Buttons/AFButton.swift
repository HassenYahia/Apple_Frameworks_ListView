//
//  AFButton.swift
//  Apple_Frameworks
//
//  Created by Hassen Abdurahman Yahia on 2023-09-27.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text (title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .foregroundColor(.white)
            .background(.red)
            .cornerRadius(10)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Text")
    }
}
