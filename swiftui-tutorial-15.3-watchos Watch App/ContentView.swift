//
//  ContentView.swift
//  swiftui-tutorial-15.3-watchos Watch App
//
//  Created by Bis  on 15/05/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge])
            }
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
