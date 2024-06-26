//
//  HomeView.swift
//  ecommerceApp
//
//  Created by Maaz Khan on 26/06/2024.
//

import SwiftUI

struct HomeView: View {
  
    @EnvironmentObject var cartManager: CartManager
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle("Shoes Shop")
           
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(CartManager())
}
