//
//  swiftui_tutorial_15_3App.swift
//  swiftui-tutorial-15.3
//
//  Created by Bis  on 15/05/24.
//

import SwiftUI

@main
struct swiftui_tutorial_15_3App: App {
    
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
