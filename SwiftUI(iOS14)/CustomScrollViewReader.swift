//
//  CustomScrollViewReader.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct CustomScrollViewReader: View {
    let colors = [Color.red, .green, .blue]
    
    var body: some View {
        ScrollView {
            ScrollViewReader { item in
                Button("Jump to number 8") {
                    item.scrollTo(8, anchor: .center)
                }
                
                ForEach(0..<10) { index in
                    Text("Item \(index)")
                        .frame(width: 300, height: 300)
                        .background(colors[index % colors.count])
                }
            }
        }
    }
}

struct ScrollViewReader_Previews: PreviewProvider {
    static var previews: some View {
        CustomScrollViewReader()
    }
}

