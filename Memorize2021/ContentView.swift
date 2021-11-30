//
//  ContentView.swift
//  Memorize2021
//
//  Created by Vahtee Boo on 29.11.2021.
//

import SwiftUI

struct ContentView: View {
    
    let emojis = ["🚢", "⛴", "🚗", "🚌", "🛳", "🚙", "🛥", "🚕", "🚁", "🛸", "🚀", "🛰", "🚂", "🛩", "✈️", "🚇", "🚲", "🚃", "🏍", "🛺", "🚔", "🚆", "🛵", "🏎", "🚒", "🚑", "🚜", "🚛"]
    
    @State var emojiCount = 6
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<emojiCount], id: \.self) {emoji in
                    CardView(content: emoji)
                }
            }
            .padding(.horizontal)
            .foregroundColor(.red)
            Spacer(minLength: 30)
            HStack {
                add
                Spacer()
                remove
                
            }
            .font(.largeTitle)
            .padding(.horizontal)
        }
    }
    
    var remove: some View {
        Button {
            if emojiCount < emojis.count {
                emojiCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
            
        }
    }
    
    var add: some View {
        Button {
            if emojiCount > 1 {
                emojiCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct CardView: View {
    var content: String
    @State var isFaceUp: Bool = true
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape.fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}
