//
//  SafarView.swift
//  Apple_Frameworks
//
//  Created by Hassen Abdurahman Yahia on 2023-10-01.
//

import SwiftUI
import SafariServices


struct SafariView: UIViewControllerRepresentable {
        
    
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ UIViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
    

}
