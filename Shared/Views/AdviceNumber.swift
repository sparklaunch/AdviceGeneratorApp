//
//  SwiftUIView.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct AdviceNumber: View {
    let id: Int
    var body: some View {
        Text("ADVICE #\(id)")
            .kerning(Constants.Advice.adviceNumberKerning)
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(Color("AccentColor"))
    }
}

struct AdviceNumber_Previews: PreviewProvider {
    static var previews: some View {
        AdviceNumber(id: Constants.General.slipPlaceholder.slip.id)
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
