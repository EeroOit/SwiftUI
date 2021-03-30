//
//  CheckoutView.swift
//  ToDoList
//
//  Created by big sur on 30.3.2021.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @State private var paymentType = "Cash"
    
    let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to play?", selection:
                        $paymentType ) {
                    ForEach(paymentTypes, id: \.self) {
                        Text($0)
                    
                    }
                }
            }
            
        }
        .navigationTitle("Payment")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(Order())
    }
}
