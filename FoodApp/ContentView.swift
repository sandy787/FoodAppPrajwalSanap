//
//  ContentView.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "list.clipboard")
                    Text("Order")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Account")
                }
        }
        .accentColor(.orange)
    }
}

#Preview {
    ContentView()
}
