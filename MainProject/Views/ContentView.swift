//
//  ContentView.swift
//  MainProject
//
//  Created by R92 on 23/05/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160),spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns,spacing: 20){
                    ForEach(productlist, id: \.id){product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartManager)
                }label: {
                    CartButton(numberOfProduct: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
