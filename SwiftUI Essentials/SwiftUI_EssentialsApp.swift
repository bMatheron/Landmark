//
//  SwiftUI_EssentialsApp.swift
//  SwiftUI Essentials
//
//  Created by bMatheron on 23/05/2023.
//

import SwiftUI

@main
struct SwiftUI_EssentialsApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
