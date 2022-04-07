//
//  Slip.swift
//  AdviceGeneratorApp (iOS)
//
//  Created by Jinwook Kim on 2022/04/07.
//

import Foundation

struct Slip: Decodable {
    struct slip: Decodable {
        var id: Int
        var advice: String
    }
}
