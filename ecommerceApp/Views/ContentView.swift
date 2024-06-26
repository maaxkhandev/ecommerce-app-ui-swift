//
//  ContentView.swift
//  ecommerceApp
//
//  Created by Maaz Khan on 25/06/2024.
//
import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
   
    
    var body: some View {
      
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }  .environmentObject(cartManager)
                CartView()
                    .environmentObject(cartManager)
                    .tabItem {
                            Label("Cart", systemImage: "cart")
                            }.badge(cartManager.products.count)
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
            }
       
    }
}




#Preview {
    ContentView()
      
}
