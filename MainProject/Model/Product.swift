//
//  Product.swift
//  MainProject
//
//  Created by R92 on 23/05/24.
//

import Foundation

struct product: Identifiable{
    var id = UUID()
    var name : String
    var image : String
    var price : Int
}
var productlist = [product(name: "White Sweater", image: "Sweater1", price: 54),
                  product(name: "Green Sweater", image: "Sweater3", price: 89),
                  product(name: "Sea Sweater", image: "Sweater4", price: 90),
                  product(name: "Mink Sweater", image: "Sweater5", price: 100),
                  product(name: "Cream Sweater", image: "Sweater6", price: 90),
                  product(name: "Gray Sweater", image: "Sweater7", price: 80),
                  product(name: "Blue Sweater", image: "Sweater8", price: 60),
                  product(name: "Gray Man Sweater", image: "Sweater9", price: 80),
                  product(name: "Blue Man Sweater", image: "Sweater10", price: 45),
                  product(name: "Sand Sweater", image: "Sweater11", price: 75),
                  product(name: "Brown Sweater", image: "Sweater13", price: 85),
                  product(name: "Black Sweater", image: "Sweater14", price: 65),
                  product(name: "Maroon Sweater", image: "Sweater15", price: 55),
                  product(name: "Red Sweater", image: "Sweater16", price: 95)
]
