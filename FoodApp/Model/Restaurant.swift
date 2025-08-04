//
//  Restaurant.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//


import Foundation

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let deliveryTime: Int
    let rating: Double
    let tags: [String]
}