//
//  ToolbarItemsView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct ToolbarItemsView: View {
    var body: some View {
        NavigationView {
            Text("Hello, World!")
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        HStack {
                            Button("Button One") {}
                            Button("Button Two") {}
                            Button("Button Three") {}
                            
                        }
                    }
                }
        }
    }
}

struct ToolbarItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarItemsView()
    }
}
