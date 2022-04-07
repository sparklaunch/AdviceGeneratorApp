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
            .frame(width: 32, height: 32)
            .padding(24)
            .background(Color("AccentColor"))
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}

struct Dice_Previews: PreviewProvider {
    static var previews: some View {
        Dice()
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
