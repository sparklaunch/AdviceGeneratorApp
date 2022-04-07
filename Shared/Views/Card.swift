//
//  Card.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(spacing: Constants.Card.vStackSpacing) {
            AdviceNumber(text: "ADVICE #117")
            AdviceText(text: "It is easy to sit up and take notice, what's difficult is getting up and taking action.")
            Pattern()
            Spacer()
                .frame(height: Constants.Card.spacingHeight)
        }
        .padding(Constants.Card.cardPadding)
        .background(
            Color("CardColor")
        )
        .cornerRadius(Constants.Card.cardCornerRadius)
        .overlay(
            GeometryReader { geometry in
                Button {

                } label: {
                    Dice()
                }
                .offset(x: geometry.size.width / 2 - 40, y: geometry.size.height - 40)
            }
        )
        .shadow(radius: Constants.General.shadowRadius)
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
