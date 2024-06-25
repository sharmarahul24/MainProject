//
//  CartView.swift
//  MainProject
//
//  Created by R92 on 23/05/24.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager : CartManager
    var body: some View {
        ScrollView{
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){product in
                    ProductRow(product: product)
                    
                   
                    }
                HStack{
                    Text("Your Cart Total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
            }else{
                Text("Your Cart Is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
            .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
