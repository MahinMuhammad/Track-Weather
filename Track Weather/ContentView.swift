//
//  ContentView.swift
//  Track Weather
//
//  Created by Md. Mahinur Rahman on 2/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("BackgroundImage")
                .resizable()
                .frame(width: 807.12, height: 1211)
                .ignoresSafeArea()
            Image("BackgroundHouse")
                .resizable()
                .frame(width: 390, height: 390)
            VStack {
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
