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
    case equal = "="
    case decimal = ","
    case percent = "%"
    case negative = "-/+"
  

    var buttonBackgroundColor: Color{
        switch self {
        case .add, .subtract, .multiply, .divide, .equal:
            return .orange
        case .clear, .negative, .percent:
            return Color(.lightGray)
        default:
            return Color(.white)
        }
    }
    
    var buttonForegroundColor: Color{
        switch self {
        case .add, .subtract, .multiply, .divide, .equal:
            return .white
        case .clear, .negative, .percent:
            return Color(.white)
        default:
            return Color(.black)
        }
    }

}

enum Operation {
    case add, subtract, multiply, divide, square, exponentiation, none
}

struct ContentView: View {
    
    @State var value = "0"
    @State var runningValue: Double = 0
    @State var currentOperation: Operation = .none
    
    let buttons: [[CalcButtons]] = [
        [.clear, .negative, .percent, .divide,],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal],]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer ()
                HStack {
                    Spacer()
                    Text (value)
                        .bold()
                        .font(.system(size: 80))
                        .foregroundColor(.white)
                }
                .padding()
                
                ForEach(buttons, id: \.self) { row in
                    HStack(spacing: 5) {
                        ForEach(row, id: \.self) { item in
                            Button(action: {
                                self.didTap(button: item)
                                
                            }, label: {
                                Text(item.rawValue)
                                    .font(.system(size: 35))
                                    .frame(width: self.buttonWidth(item: item),
                                           height: self.buttonHeight() )
                                    .background(item.buttonBackgroundColor)
                                    .foregroundColor(item.buttonForegroundColor)
                                    .cornerRadius(self.buttonWidth(item: item)/10)
                        })
                    }
                }
                    .padding(.bottom, 3)
            }
        }
    }
  }
    func didTap(button: CalcButtons) {
        switch button {
        case .add, .subtract, .multiply, .divide, .equal:
                    if button == .add {
                        self.currentOperation = .add
                        self.runningValue = Double(self.value) ?? 0
                    }
                    else if button == .subtract {
                        self.currentOperation = .subtract
                        self.runningValue = Double(self.value) ?? 0
                    }
                    else if button == .multiply {
                        self.currentOperation = .multiply
                        self.runningValue = Double(self.value) ?? 0
                    }
                    else if button == .divide {
                        self.currentOperation = .divide
                        self.runningValue = Double(self.value) ?? 0
                    }
                
                    else if button == .equal {
                        let runningValue = self.runningValue
                        let currentValue = Double(self.value) ?? 0
                        switch self.currentOperation {
                        case .add: self.value = "\(runningValue + currentValue)"
                        case .subtract: self.value = "\(runningValue - currentValue)"
                        case .multiply: self.value = "\(runningValue * currentValue)"
                        case .divide: self.value = "\(runningValue / currentValue)"
                        case .square: self.value = "\(runningValue / currentValue)"
                        case .exponentiation: self.value = "\(runningValue / currentValue)"

                        case .none:
                            break
                        }
                    }

                    if button != .equal {
                        self.value = "0"
                    }
                case .clear:
                    self.value = "0"
                case .decimal, .negative, .percent:
                    break
                default:
                    let number = button.rawValue
                    if self.value == "0" {
                        value = number
                    }
                    else {
                        self.value = "\(self.value)\(number)"
                    }
                }
            }
    
    //calculating button size to fit screen
    func buttonWidth(item: CalcButtons) -> CGFloat {
            if item == .zero {
                return ((UIScreen.main.bounds.width - (4*12)) / 4) * 2
            }
            return (UIScreen.main.bounds.width - (5*12)) / 4
        }

        func buttonHeight() -> CGFloat {
            return (UIScreen.main.bounds.width - (5*12)) / 4
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
