//
//  ContentView.swift
//  dicee-ui
//
//  Created by Saurabh Mirajkar on 24/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNumber: Int = 1
    @State var rightDiceNumber: Int = 1
    
    @State var showingAlert = false
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(.all)

            
            VStack{
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    // onclick action
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    showingAlert = leftDiceNumber == rightDiceNumber
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                })
                .background(.red)
                .frame(height:100)
                .alert("Congratulation! You have won the jackpot!", isPresented: $showingAlert) {

                }
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
