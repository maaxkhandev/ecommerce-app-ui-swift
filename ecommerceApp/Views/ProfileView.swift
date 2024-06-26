//
//  ProfileView.swift
//  ecommerceApp
//
//  Created by Maaz Khan on 26/06/2024.
//
import SwiftUI
import SwiftUI

struct ProfileView: View {

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image(user.profileImage)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .frame(width: 125, height: 125)
                        .background(.green)
                        .clipShape(Circle())
                    Text(user.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.top, 10)

                    Text(user.email)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .padding(.bottom, 20)
                }

                Divider()

                VStack(alignment: .leading, spacing: 20) {
                    ProfileActionRow(icon: "pencil", title: "Edit Profile")
                    ProfileActionRow(icon: "gear", title: "Settings")
                    ProfileActionRow(icon: "creditcard", title: "Payment Methods")
                    ProfileActionRow(icon: "arrow.right.square", title: "Log Out")
                }
                .padding(.horizontal, 20)
                .padding(.top, 20)

                Spacer()
            }
            .padding()
        .navigationTitle("Profile")
        }
    }
}


#Preview {
    ProfileView()
}
