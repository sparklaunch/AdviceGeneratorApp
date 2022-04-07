//
//  Dice.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct Dice: View {
    var body: some View {
        Image("Dice")
            .resizable()
            .frame(width: Constants.Dice.diceWidth, height: Constants.Dice.diceWidth)
            .padding(Constants.Dice.dicePadding)
            .background(Color("AccentColor"))
            .clipShape(Circle())
            .shadow(radius: Constants.General.shadowRadius)
    }
}

struct Dice_Previews: PreviewProvider {
    static var previews: some View {
        Dice()
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
