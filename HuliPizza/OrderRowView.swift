//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Thirawat First Prasert on 15/5/2566 BE.
//

import SwiftUI

struct OrderRowView: View {
    var order:Int
    var body: some View {
        VStack {
            HStack {
                Text("Your Order item \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format: .number)
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView(order: 1)
    }
}
