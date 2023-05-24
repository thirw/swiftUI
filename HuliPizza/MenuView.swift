//
//  MenuView.swift
//  HuliPizza
//
//  Created by Thirawat First Prasert on 15/5/2566 BE.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView{
            ForEach(1...25, id:\.self) { item in
                MenuRowView(item: item)
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
