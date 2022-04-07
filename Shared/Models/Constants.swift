//
//  Constants.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import Foundation

enum Constants {
    enum General {
        public static let shadowRadius: Double = 10
        public static let slipPlaceholder: Slip = Slip(slip: SlipItem(id: 117, advice: "It is easy to sit up and take notice, what's difficult is getting up and taking action."))
    }
    enum Advice {
        public static let adviceNumberKerning: Double = 3
        public static let adviceLineSpacing: Double = 3
    }
    enum Card {
        public static let vStackSpacing: Double = 24
        public static let spacingHeight: Double = 32
        public static let cardPadding: Double = 32
        public static let cardCornerRadius: Double = 16
    }
    enum Dice {
        public static let diceWidth: Double = 32
        public static let dicePadding: Double = 24
        public static let diceOffset: Double = 40
    }
}
