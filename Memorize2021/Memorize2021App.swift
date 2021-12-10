//
//  Memorize2021App.swift
//  Memorize2021
//
//  Created by Vahtee Boo on 29.11.2021.
//

import SwiftUI

@main
struct Memorize2021App: App {
    
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
