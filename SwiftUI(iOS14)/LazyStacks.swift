//
//  LazyStacks.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 21.07.2022.
//

import SwiftUI

struct LazyStacks: View {
    var body: some View {
        ScrollView {
            LazyVStack { // инициализируется только то, что на экране (не загружаются все строки сразу)
                ForEach(1...100, id: \.self, content: SampleRow.init)
            }
        }
    }
}

struct SampleRow: View {
    let id: Int
    
    var body: some View {
        Text("Row \(id)")
    }
    
    init(id: Int) {
        print("Row number \(id)")
        self.id = id
    }
}

struct LazyStacks_Previews: PreviewProvider {
    static var previews: some View {
        LazyStacks()
    }
}
