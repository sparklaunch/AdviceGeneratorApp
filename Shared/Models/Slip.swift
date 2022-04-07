//
//  Slip.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import Foundation

struct Slip: Decodable {
    let slip: SlipItem
}

struct SlipItem: Identifiable, Decodable {
    let id: Int
    let advice: String
}
