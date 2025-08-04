//
//  Category.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//

import Foundation

struct Category: Identifiable{
    let id=UUID()
    let name: String
    let image: String
    let items: [Items]
}