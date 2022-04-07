//
//  AdviceText.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct AdviceText: View {
    let text: String
    var body: some View {
        Text("\"\(text)\"")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color("BodyColor"))
            .multilineTextAlignment(.center)
            .lineSpacing(Constants.Advice.adviceLineSpacing)
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct AdviceText_Previews: PreviewProvider {
    static var previews: some View {
        AdviceText(text: "It is easy to sit up and take notice, what's difficult is getting up and taking action.")
            .background(Color("CardColor"))
            .previewLayout(.sizeThatFits)
    }
}
