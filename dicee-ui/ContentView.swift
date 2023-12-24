//
//  ContentView.swift
//  dicee-ui
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)

            
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: 1)
                    DiceView(n: 1)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    // onclick action
                }, label: {
                    Text("Roll")
                        .font(.system(size:50))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                })
                .background(.red)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}
