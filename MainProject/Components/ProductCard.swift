//
//  ProductCard.swift
//  MainProject
//
//  Created by R92 on 23/05/24.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager : CartManager
    var product :product
    var body: some View {
        ZStack(alignment: .topTrailing){
            ZStack(alignment: .bottom){
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading){
                    Text(product.name)
                        .bold()
                    
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180,alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180,height: 250)
        .shadow(radius: 3)
            Button{
                cartManager.addToCart(product: product)
            }label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productlist[0])
            .environmentObject(CartManager())
    }
}
