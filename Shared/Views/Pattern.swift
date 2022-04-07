//
//  Pattern.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct Pattern: View {
    var body: some View {
        Image(decorative: "Pattern")
            .resizable()
            .scaledToFit()
    }
}

struct Pattern_Previews: PreviewProvider {
    static var previews: some View {
        Pattern()
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
