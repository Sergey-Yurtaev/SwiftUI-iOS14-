//
//  ContentView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 21.07.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: DataModel
    var body: some View {
        VStack {
            Text("Hello, SwiftUI!")
            Text(model.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataModel())
    }
}

