//
//  ContentView.swift
//  Memorize2021
//
//  Created by Vahtee Boo on 29.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    let emojiSetOne = ["🚢", "⛴", "🚗", "🚌", "🛳", "🚙", "🛥", "🚕", "🚁", "🛸", "🚀", "🛰", "🚂", "🛩", "✈️", "🚇", "🚲", "🚃", "🏍", "🛺", "🚔", "🚆", "🛵", "🏎", "🚒", "🚑", "🚜", "🚛"]
    
    let emojiSetTwo = ["🍏", "🍐", "🍊", "🍋", "🍌", "🍉", "🍇", "🍓", "🫐", "🍒", "🍑", "🥭", "🍍", "🥥", "🥝", "🍅", "🍆", "🥑", "🥒", "🌶", "🫑", "🌽", "🥕", "🫒", "🧄", "🧅", "🥔", "🌰", "🥜"]
    
    let emojiSetThree = ["🐶", "🐯", "🐒", "🦇", "🐞", "🐢", "🐡", "🐆", "🦒", "🦙", "🐓", "🦨", "🐱", "🐜", "🐍", "🐠", "🦓", "🦃", "🦫", "🦍", "🦎", "🪰", "🐝", "🪱", "🦋", "🐌", "🦉", "🦀", "🦆"]
    
    
    
    var body: some View {
        VStack(alignment: .center) {
            NavigationView {
                TabView {
                    Cards(emojis: emojiSetOne).tabItem { Label("Cars", systemImage: "car.2") }
                    Cards(emojis: emojiSetTwo).tabItem { Label("Fruits", systemImage: "takeoutbag.and.cup.and.straw") }
                    Cards(emojis: emojiSetThree).tabItem { Label("Animals", systemImage: "hare.fill") }
                }
                .navigationTitle("Memorize!")
            }
        }
//        .padding(.horizontal)
    }
}

struct Cards: View {
    let emojis: [String]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(emojis.shuffled()[0...Int.random(in: 4...emojis.count)], id: \.self) { emoji in
                    Card(emoji: emoji)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct Card: View {
    let emoji: String
    var body: some View {
        ZStack {
            Rectangle()
                .aspectRatio(2/3, contentMode:.fit)

            Text(emoji)
                .font(.title)
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
