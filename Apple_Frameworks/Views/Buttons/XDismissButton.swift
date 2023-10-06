//
//  XDismissButton.swift
//  Apple_Frameworks
//
//  Created by Hassen Abdurahman Yahia on 2023-10-01.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingModel: Bool
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingModel = false
            }label: {
                Image (systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
          
        }
        .padding()
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingModel: .constant(false))
    }
}
