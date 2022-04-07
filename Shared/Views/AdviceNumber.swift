//
//  SwiftUIView.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct AdviceNumber: View {
    let text: String
    var body: some View {
        Text(text)
            .kerning(Constants.Advice.adviceNumberKerning)
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(Color("AccentColor"))
    }
}

struct AdviceNumber_Previews: PreviewProvider {
    static var previews: some View {
        AdviceNumber(text: Constants.General.adviceNumberPlaceholder)
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
