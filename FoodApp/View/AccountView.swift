//
//  AccountView.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                
                
                HStack {
                    Text("Account")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal)
                
                
                Spacer()
                VStack(spacing: 20) {

                    
                    Text("Coming Soon!")
                        .font(.title)
                        .fontWeight(.bold)
                    }
                    .padding(.horizontal, 40)
                    .padding(.bottom,400)
                }
                
                Spacer()
            }
        }
    }


#Preview {
    AccountView()
}
