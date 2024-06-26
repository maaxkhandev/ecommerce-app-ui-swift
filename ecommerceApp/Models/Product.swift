//
//  Product.swift
//  ecommerceApp
//
//  Created by Maaz Khan on 25/06/2024.
//

import Foundation


struct Product: Identifiable{
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [
    Product(name: "Black Sneakers", image: "shoe1", price: 54),
       Product(name: "Red Runners", image: "shoe10", price: 89),
       Product(name: "Black Trainers", image: "shoe3", price: 30),
       Product(name: "Colorful Shoes", image: "shoe4", price: 34),
       Product(name: "Air Max", image: "shoe5", price: 76),
       Product(name: "Grey Runners", image: "shoe6", price: 12),
       Product(name: "Beige Shoes", image: "shoe7", price: 101),
       Product(name: "Pastel Sneakers", image: "shoe8", price: 220),
       Product(name: "Neon Trainers", image: "shoe9", price: 101),
       Product(name: "Red Kicks", image: "shoe2", price: 220)
]
