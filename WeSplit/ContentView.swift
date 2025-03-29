//
//  ContentView.swift
//  WeSplit
//
//  Created by Dylan Balagtas on 3/29/25.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    var body: some View {
        Button("Tap Count: \(tapCount)"){
            tapCount += 1
        }
        
    }
}

#Preview {
    ContentView()
}
