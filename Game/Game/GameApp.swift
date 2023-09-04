//
//  GameApp.swift
//  Game
//
//  Created by Sam Martins on 9/3/23.
//

import SwiftUI

@main
struct GameApp: App {
    @StateObject var list = GameViewModel()
    var body: some Scene {
        WindowGroup {
                ContentView().environmentObject(list)
        }
    }
}
