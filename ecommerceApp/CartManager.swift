//
//  CartManager.swift
//  ecommerceApp
//
//  Created by Maaz Khan on 25/06/2024.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(product: Product){
        if products.contains(where: { $0.id == product.id }) {
                   if let existingProductIndex = products.firstIndex(where: { $0.id == product.id }) {
                       let existingProduct = products[existingProductIndex]
                       products.remove(at: existingProductIndex)
                       total -= existingProduct.price
                   }
        }else{
            products.append(product)
            total += product.price
        }
}
    
    
    func removeFromCart(product: Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
}
