//
//  WebLinks.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

import SwiftUI

struct WebLinks: View {
    
    var body: some View {
        Link(destination: URL(string: "https://swiftbook.ru")!) {
            Image(systemName: "link.circle.fill")
                .font(.largeTitle)
        }
        
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        WebLinks()
    }
}
