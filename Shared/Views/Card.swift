//
//  Card.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct Card: View {
    @StateObject private var network: Network = Network()
    var body: some View {
        VStack(spacing: Constants.Card.vStackSpacing) {
            AdviceNumber(id: network.slip?.slip.id ?? Constants.General.slipPlaceholder.slip.id)
            AdviceText(text: network.slip?.slip.advice ?? Constants.General.slipPlaceholder.slip.advice)
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
                    network.fetchSlip()
                } label: {
                    Dice()
                }
                .offset(x: geometry.size.width / 2 - Constants.Dice.diceOffset, y: geometry.size.height - Constants.Dice.diceOffset)
            }
        )
        .shadow(radius: Constants.General.shadowRadius)
        .padding()
        .onAppear {
            network.fetchSlip()
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
            .background(Color("BackgroundColor"))
            .previewLayout(.sizeThatFits)
    }
}
