//
//  ContentView.swift
//  HuliPizza
//
//  Created by Thirawat First Prasert on 2/5/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var orders:[OrderItem] =  testOrders
    @State private var showOrders:Bool = false
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            HStack {
                Text("\(orders.count) orders")
                Spacer()
                Button {
                    showOrders.toggle()
                } label: {
                    Image(systemName: showOrders ? "cart" : "menucard")
                }
            }
            .foregroundStyle(.white)
            .font(.title2)
            if showOrders {
                OrderView(orders: $orders)
                    .cornerRadius(10)
            } else {
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            
            
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors: [.cyan, Color("Surf"), Color("Sky"), .white], startPoint: .topLeading, endPoint: .bottom))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


