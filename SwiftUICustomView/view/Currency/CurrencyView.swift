//
//  CurrencyView.swift
//  SwiftUICustomView
//
//  Created by Davidyoon on 1/10/24.
//

import SwiftUI

struct CurrencyView: View {
    
    @State var amount: Decimal = 0.0
    
    var body: some View {
        VStack {
            Text(amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            Text(amount, format: .currency(code: "USD"))
            Text(amount, format: .currency(code: "JPY"))
            Text(amount, format: .currency(code: "GBP"))
            TextField("Amount", value: $amount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
            
            TextField("Amount", value: $amount, format: .number.precision(.fractionLength(2)))
                .keyboardType(.decimalPad)
        }
        .padding()
    }
}

#Preview {
    CurrencyView()
}
