//
//  DateFormattingView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct DateFormattingView: View {
    var body: some View {
        VStack {
            Text(Date()...Date().addingTimeInterval(600))
            Text(Date().addingTimeInterval(600), style: .time)
            Text(Date().addingTimeInterval(600), style: .relative)
            Text(Date().addingTimeInterval(600), style: .timer)
        }
        
    }
}

struct DateFormattingView_Previews: PreviewProvider {
    static var previews: some View {
        DateFormattingView()
    }
}
