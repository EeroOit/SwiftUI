//
//  ContentView.swift
//  Calc
//
//  Created by big sur on 13.4.2021.
//

import SwiftUI

enum CalcButtons: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case clear = "C"
    case multiply = "*"
    case equel = "="
    case decimal = ","
    case negative = "-/+"


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
                
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                
                            }, label: {
                                Text(item.rawValue)
                                    .frame(width: 60, height: 60)
                                    .background(Color.orange)
                                    .foregroundColor(.blue)
                                    .cornerRadius(30)
                        })
                    }
                }
            }
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
