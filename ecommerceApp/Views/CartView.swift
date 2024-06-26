//
//  CartView.swift
//  ecommerceApp
//
//  Created by Maaz Khan on 25/06/2024.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        NavigationView {
            ScrollView {
                if cartManager.products.count > 0 {
                    ForEach(cartManager.products, id: \.id) { product in
                        ProductRow(product: product)
                    }
                    
                    HStack {
                        Text("Your cart total is")
                        Spacer()
                        Text("\(cartManager.total).00")
                            .bold()
                    }
                    .padding(.vertical)
                    
                    Button(action: {
                    }, label: {
                        HStack {
                            Image(systemName: "creditcard")
                            Text("Checkout Now")
                        }
                        .foregroundColor(.white)
                        .font(.headline)
                    })
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 45)
                    .background(Color.black)
                    .cornerRadius(10)
                    
                } else {
                    Text("Your cart is empty")
                        .font(.title)
                        .padding()
                }
            }
            .navigationTitle(Text("My Cart"))
            .padding()
        }
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
