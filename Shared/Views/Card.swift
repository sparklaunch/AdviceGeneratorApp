//
//  Card.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct Card: View {
    var body: some View {
        VStack {
            AdviceNumber(text: "ADVICE #117")
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
