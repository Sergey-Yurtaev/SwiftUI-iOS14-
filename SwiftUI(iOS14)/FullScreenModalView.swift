//
//  FullScreenModalView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct MainView: View {
    @State private var isPresented = false
    
    var body: some View {
        Button("Go to modal view") {
            isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented) {
            FullScreenModalView()
        }
    }
}

struct FullScreenModalView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("This is a modal view")
            Text("Please tap to dismiss")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .ignoresSafeArea()
        .onTapGesture {
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
