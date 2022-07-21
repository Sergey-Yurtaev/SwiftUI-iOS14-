//
//  LabelView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

import SwiftUI

struct LabelView: View { // в отличии от текста его можно инициазировать с иконкой или изображением
    var body: some View {
        VStack {
            Label("Home", systemImage: "circle")
            Label {
                Text("User Name")
                    .foregroundColor(.secondary)
                    .font(.title)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon: {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .font(.title)
                    .frame(width: 64, height: 64)
                    .offset(y: -25)
        }
        }
    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView()
    }
}

