//
//  PomodoTaskApp.swift
//  PomodoTask
//
//  Created by eyüp köse on 11.03.2024.
//

import SwiftUI

@main
struct PomodoTaskApp: App {
    var body: some Scene {
        WindowGroup {
            OpeningScreen()
        }
        .modelContainer(for: Task.self)
    }
}
