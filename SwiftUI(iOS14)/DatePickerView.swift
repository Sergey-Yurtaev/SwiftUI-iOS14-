//
//  DatePickerView.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 22.07.2022.
//

import SwiftUI

struct DatePickerView: View {
    @State private var date = Date()
    @State private var revealDetails = false
    
    var body: some View {
        VStack {
            Text("Enter your birthday")
                .font(.largeTitle)
            DisclosureGroup(
                revealDetails ? "Hide Calendar" : "Show Calendar",
                isExpanded: $revealDetails
            ) {
                DatePicker("Enter your birthday", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
            }
            Spacer()
        }
        .padding()
    }
}

struct DatePickerView_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerView()
    }
}
