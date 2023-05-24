//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by Thirawat First Prasert on 15/5/2566 BE.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem:Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Margherita Huli Pizza")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                    
                                    
                if let image = UIImage(named: "0x_lg") {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .padding([.top, .bottom], 5)
                        
                    //                    .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
                
            }
            .background(.linearGradient(colors: [Color("Surf"), Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in: Capsule())
            .shadow(color: .teal, radius: 5, x: 8, y:8)
            VStack(alignment: .leading) {
                
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec consectetur ante eget tempus eleifend. Vivamus a vehicula enim. Vestibulum condimentum quis urna vel tincidunt. Nunc imperdiet posuere turpis quis posuere. Duis metus nunc, pellentesque sit amet volutpat ut, molestie sit amet leo. Duis aliquet hendrerit diam sit amet dapibus. Curabitur.")
                        .font(.custom("Georgia", size: 18, relativeTo: .body))
                }
                
            }
            Button{
                addedItem = true
            } label: {
                Spacer()
                Text(12.99, format: .currency(code: "USD")).bold()
                Image(systemName: addedItem ? "cart.fill.badge.plus" : "cart.badge.plus")
                Spacer()
            }
            .padding()
            .background(.red, in: Capsule())
            .foregroundStyle(.white)
            .padding(5)
            
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView()
    }
}
