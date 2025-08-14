//
//  HomeView.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//



import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    
                  
                    HStack {
                        Text("Home")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Spacer()
                    }
                    .padding(.horizontal)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Search", text: $searchText)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
      
                    VStack {
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Join Party")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("Rs.1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.orange)
                                
                                Button("SEE MORE") {
                                    
                                }
                                .padding(.horizontal, 20)
                                .padding(.vertical, 8)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                            }
                            Spacer()
                            Image("shwarma")
                                .frame(width: 80, height: 80)
                                .background(Color.blue.opacity(0.3))
                                .cornerRadius(40)
                        }
                        .padding()
                        .background(Color.yellow.opacity(0.3))
                        .cornerRadius(15)
                    }
                    .padding(.horizontal)
                    
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Categories")
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(DummyData.categories) { category in
                                    VStack {
                                        
                                        Image(category.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 60, height: 60)
                                            .clipped()
                                            .background(Color.orange.opacity(0.2))
                                            .cornerRadius(30)
                                        Text(category.name)
                                            .font(.caption)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Collections")
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                        LazyVGrid(columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ], spacing: 15) {
                            
                            
                            HStack {
                                Image(systemName: "shippingbox")
                                    .font(.title2)
                                    .foregroundColor(.green)
                                VStack(alignment: .leading) {
                                    Text("FREESHIP")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                Spacer()
                            }
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(10)
                            
                            
                            HStack {
                                Image(systemName: "tag")
                                    .font(.title2)
                                    .foregroundColor(.orange)
                                VStack(alignment: .leading) {
                                    Text("DEAL Rs.1")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                Spacer()
                            }
                            .padding()
                            .background(Color.orange.opacity(0.1))
                            .cornerRadius(10)
                            
                            
                            HStack {
                                Image(systemName: "location")
                                    .font(.title2)
                                    .foregroundColor(.blue)
                                VStack(alignment: .leading) {
                                    Text("NEAR YOU")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                Spacer()
                            }
                            .padding()
                            .background(Color.blue.opacity(0.1))
                            .cornerRadius(10)
                            
                            
                            HStack {
                                Image(systemName: "flame")
                                    .font(.title2)
                                    .foregroundColor(.red)
                                VStack(alignment: .leading) {
                                    Text("POPULAR")
                                        .font(.headline)
                                        .fontWeight(.bold)
                                }
                                Spacer()
                            }
                            .padding()
                            .background(Color.red.opacity(0.1))
                            .cornerRadius(10)
                        }
                        .padding(.horizontal)
                    }
        
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Recommended for you")
                                .font(.headline)
                                .fontWeight(.bold)
                            Spacer()
                            Text("View all")
                                .foregroundColor(.orange)
                        }
                        .padding(.horizontal)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(DummyData.restaurants) { restaurant in
                                    VStack(alignment: .leading) {

                                        Image(restaurant.image)
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 150, height: 100)
                                            .clipped()
                                            .cornerRadius(10)
                                        
                                        Text(restaurant.name)
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                        
                                        HStack {
                                            Text("\(restaurant.deliveryTime) mins")
                                            Text("•")
                                            Text("⭐ \(restaurant.rating, specifier: "%.1f")")
                                        }
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                        
                                        HStack {
                                            ForEach(restaurant.tags.prefix(2), id: \.self) { tag in
                                                Text(tag)
                                                    .font(.caption)
                                                    .padding(.horizontal, 8)
                                                    .padding(.vertical, 4)
                                                    .background(Color.orange.opacity(0.2))
                                                    .cornerRadius(8)
                                            }
                                        }
                                    }
                                    .frame(width: 150)
                                }
                            }
                            .padding(.horizontal)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
