//
//  CartManager.swift
//  MainProject
//
//  Created by R92 on 23/05/24.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products: [product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product : product){
        products.append(product)
        total += product.price
    }
    
    func removeFromeCart(product:product){
        products = products.filter{ $0.id != product.id }
        total -= product.price
    }
    
}
