//
//  Items.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//

import Foundation

struct Items: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let restaurant: String
    let image: String
}