//
//  MatchedGeometry.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct MatchedGeometry: View {
    @Namespace private var animation
    @State private var isFlipped = false
    
    var body: some View {
        VStack {
            if isFlipped {
                Circle()
                    .fill(Color.red)
                    .frame(width: 64, height: 64)
                    .matchedGeometryEffect(id: "Circle", in: animation)
                Text("Taylor Swift")
                    .font(.title)
                    .matchedGeometryEffect(id: "Text", in: animation)
            } else {
                Text("Taylor Swift")
                    .font(.title)
                    .matchedGeometryEffect(id: "Text", in: animation)
                Circle()
                    .fill(Color.red)
                    .frame(width: 64, height: 64)
                    .matchedGeometryEffect(id: "Circle", in: animation)
            }
        }
        .onTapGesture {
            withAnimation {
                isFlipped.toggle()
            }
        }
    }
}

struct MatchedGeometryEffect_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometry()
    }
}
