import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                
                VStack(alignment: .leading) {
                    Text(product.name)
                        .bold()
                    Text("\(product.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            if cartManager.products.contains(where: { $0.id == product.id }) {
                Button(action: {
                    cartManager.removeFromCart(product: product)
                }, label: {
                    Image(systemName: "minus")
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(50)
                        .padding(10)
                })
            } else {
                Button(action: {
                    cartManager.addToCart(product: product)
                }, label: {
                    Image(systemName: "plus")
                        .frame(width: 35, height: 35)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(50)
                        .padding(10)
                })
            }
        }
    }
}

#Preview {
    ProductCard(product: productList[0])
        .environmentObject(CartManager())
}
