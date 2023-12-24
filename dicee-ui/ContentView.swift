//
//  ContentView.swift
//  dicee-ui
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
