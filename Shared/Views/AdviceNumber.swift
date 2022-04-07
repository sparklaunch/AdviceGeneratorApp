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
            .kerning(3)
            .font(.footnote)
            .fontWeight(.bold)
            .foregroundColor(Color("AccentColor"))
    }
}

struct AdviceNumber_Previews: PreviewProvider {
    static var previews: some View {
        AdviceNumber(text: "ADVICE #117")
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
