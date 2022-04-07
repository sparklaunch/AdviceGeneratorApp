//
//  Card.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(spacing: 24) {
            AdviceNumber(text: "ADVICE #117")
            AdviceText(text: "It is easy to sit up and take notice, what's difficult is getting up and taking action.")
            Pattern()
            Spacer()
                .frame(height: 30)
        }
        .padding(32)
        .background(
            Color("CardColor")
        )
        .cornerRadius(15)
        .overlay(
            GeometryReader { geometry in
                Button {

                } label: {
                    Dice()
                }
                .offset(x: geometry.size.width / 2 - 40, y: geometry.size.height - 40)
            }
        )
        .shadow(radius: 10)
        .padding()
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
