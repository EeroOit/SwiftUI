//
//  ContentView.swift
//  Calc
//
//  Created by big sur on 13.4.2021.
//

import SwiftUI

enum CalcButtons {
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case zero
    case add
    case subtract
    case divde
    case multiply
    case equel
    case decimal
    case negative


}

struct ContentView: View {
    
    let buttons: [[CalcButtons]] = [
        [.seven, . eight, .nine]
    ]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HStack {
                    Spacer()
                    Text ("0")
                        .bold()
                        .font(.system(size: 50))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
