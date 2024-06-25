//
//  ProductRow.swift
//  MainProject
//
//  Created by R92 on 23/05/24.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager : CartManager
    var product : product
    var body: some View {
        HStack(spacing: 20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading,spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                .onTapGesture {
                    cartManager.removeFromeCart(product: product)
                }
            
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productlist[3])
            .environmentObject(CartManager())
    }
}
