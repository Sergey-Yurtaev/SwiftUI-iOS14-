//
//  CustomProgressView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 21.07.2022.
//

import SwiftUI

struct CustomProgressView: View {
    @State private var downloadAmount = 0.0
    
    var body: some View {
        VStack {
            ProgressView("Download.....")
            ProgressView("Downloading...", value: downloadAmount, total: 100) //
            Button("Download") {
                setTimer()
            }
        }
    }
    
    private func setTimer() {
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: true) { _ in
            if downloadAmount < 100 {
                downloadAmount += 5
            }
        }
    }
}

struct CustomProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CustomProgressView()
    }
}

