//
//  CartButton.swift
//  ecommerceApp
//
//  Created by Maaz Khan on 25/06/2024.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing, content: {
            Image(systemName: "cart")
                .padding(.top, 5)
            if numberOfProducts > 0 {
                
                Text("\(numberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 14)
                    .background(.red)
                    .cornerRadius(50)
            }
        })
    }
}

#Preview {
    CartButton(numberOfProducts: 5)
}
