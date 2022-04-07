//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Background()
            Card()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
