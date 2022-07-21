//
//  SwiftUI_iOS14_App.swift
//  SwiftUI(iOS14)
//
//  Created by  Sergey Yurtaev on 21.07.2022.
//

import SwiftUI
import CoreSpotlight

@main
/*
struct SwiftUI_iOS14_App: App {
    @StateObject var model = DataModel() // Это как синглтон
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
*/

/*
struct SwiftUI_iOS14_App: App {
    @StateObject var model = DataModel()
    var body: some Scene {
        DocumentGroup(newDocument: TextFile()) { file in
            DocumentBase(document: file.$document)
        }
    }
}
*/

struct SwiftUI_iOS14_App: App {
    var body: some Scene {
        WindowGroup {
            MatchedGeometry()
        }
    }
}

class DataModel: ObservableObject { // подписать под протокол для @StateObject
    var title = "Hello!"
}
