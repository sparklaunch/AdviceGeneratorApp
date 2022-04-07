//
//  Card.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack(spacing: 16) {
            AdviceNumber(text: "ADVICE #117")
            AdviceText(text: "It is easy to sit up and take notice, what's difficult is getting up and taking action.")
        }
        .background(
            Color("CardColor")
        )
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
            .previewLayout(.sizeThatFits)
    }
}
