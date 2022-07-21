//
//  CustomListView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct CustomListView: View {
    var body: some View {
        List(0..<100) { rowIndex in
            Text("row index \(rowIndex)")
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct CustomListView_Previews: PreviewProvider {
    static var previews: some View {
        CustomListView()
    }
}
