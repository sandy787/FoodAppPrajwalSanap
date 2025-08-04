//
//  OrderView.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//

import SwiftUI

struct OrderView: View {
    @State private var orderItems: [Items] = []
    @State private var showingAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                
                
                HStack {
                    Text("Order")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.horizontal)
                
                if orderItems.isEmpty {
                    
                    VStack(spacing: 20) {
                        Image(systemName: "cart")
                            .font(.system(size: 80))
                            .foregroundColor(.gray)
                        
                        Text("No orders yet")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text("Add some delicious food to your cart!")
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                        
                        Button("Browse Menu") {
                            
                            loadSampleItems()
                        }
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                    .padding()
                    
                } else {
                    
                    ScrollView {
                        VStack(spacing: 15) {
                            ForEach(orderItems) { item in
                                HStack {
                                    
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 60, height: 60)
                                        .clipped()
                                        .cornerRadius(10)
                                    
                                    VStack(alignment: .leading) {
                                        Text(item.name)
                                            .font(.headline)
                                        Text(item.restaurant)
                                            .font(.caption)
                                            .foregroundColor(.gray)
                                        Text("₹\(Int(item.price))")
                                            .font(.subheadline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(.orange)
                                    }
                                    
                                    Spacer()
                                    
                                    Button("Remove") {
                                        removeItem(item)
                                    }
                                    .foregroundColor(.red)
                                    .font(.caption)
                                }
                                .padding()
                                .background(Color.gray.opacity(0.1))
                                .cornerRadius(10)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    
                    VStack(spacing: 15) {
                        HStack {
                            Text("Total:")
                                .font(.title2)
                                .fontWeight(.bold)
                            Spacer()
                            Text("₹\(Int(totalPrice))")
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.orange)
                        }
                        .padding(.horizontal)
                        
                        Button("Checkout") {
                            showingAlert = true
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                    }
                    .padding(.bottom, 20)
                }
                
                Spacer()
            }
        }
        .alert("Order Placed!", isPresented: $showingAlert) {
            Button("OK") {
                orderItems.removeAll()
            }
        } message: {
            Text("Your order has been placed successfully!")
        }
    }
    
    var totalPrice: Double {
        orderItems.reduce(0) { $0 + $1.price }
    }
    
    func loadSampleItems() {
        orderItems = DummyData.foodItems
    }
    
    func removeItem(_ item: Items) {
        if let index = orderItems.firstIndex(where: { $0.id == item.id }) {
            orderItems.remove(at: index)
        }
    }
}

#Preview {
    OrderView()
}
