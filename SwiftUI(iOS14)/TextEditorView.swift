//
//  TextEditorView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 21.07.2022.
//

import SwiftUI

struct TextEditorView: View {
    @State private var userBio = "Enter your bio" //
    var body: some View {
        NavigationView {
            TextEditor(text: $userBio) // это мультилайн Текст, вносим сколько угодно строк
                .font(.title)
                .foregroundColor(.red)
        }
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}

