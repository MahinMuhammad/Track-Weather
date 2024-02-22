//
//  ContentView.swift
//  Track Weather
//
//  Created by Md. Mahinur Rahman on 2/18/24.
//

import SwiftUI

struct HomeView: View {
    @State var showModal = true
    var body: some View {
        VStack {
            Text("Bengaluru")
                .font(.custom(K.SFProDisplay.semiBold, size: 34))
            Text("19°")
                .font(.custom(K.SFProDisplay.medium, size: 96))
                .fontWeight(.thin)
            Group{
                Text("Mostly Clear")
                    .foregroundStyle(Color(K.CustomColors.brandGray))
                HStack{
                    Text("H:24°")
                    Text("L:18°")
                }
            }
            .font(.custom(K.SFProDisplay.bold, size: 20))
            
            Spacer()
        }
        .foregroundStyle(Color.white)
        .padding()
        .background{
            Image(K.Images.backgroundImage)
                .resizable()
                .frame(width: 807.12, height: 1211)
                .ignoresSafeArea()
            
            Image(K.Images.backgroundHouse)
                .resizable()
                .frame(width: 390, height: 390)
                .padding(.top,150)
        }
        .sheet(isPresented: $showModal, content: {
            DetailsView()
                .presentationDetents([.height(300), .height(650)])
                .presentationDragIndicator(.hidden)
                .presentationCornerRadius(45)
                .interactiveDismissDisabled()
                .presentationBackground{
                    Color(K.CustomColors.brandPurple)
                        .opacity(0.55)
                        .background(.ultraThinMaterial)
                        .blur(radius: 5)
                }
        })
    }
}

#Preview {
    HomeView()
}
