//
//  DummyData.swift
//  FoodApp
//
//  Created by prajwal sanap on 04/08/25.
//

import Foundation

class DummyData {
    
    
    static let categories = [
        Category(name: "Biryani", image: "biryani", items: []),
        Category(name: "Salads", image: "salad", items: []),
        Category(name: "Desserts", image: "icecream", items: []),
        Category(name: "Pizza", image: "pizza", items: []),
        Category(name: "Burger", image: "burger", items: [])
    ]
    
    
    static let restaurants = [
        Restaurant(name: "Ultimate Chaap House", image: "chaap", deliveryTime: 20, rating: 4.1, tags: ["StreetFood", "Popular"]),
        Restaurant(name: "GoodLuck Cafe", image: "goodluck", deliveryTime: 30, rating: 4.5, tags: ["Cafe", "Near you"]),
        Restaurant(name: "Punjabi TREAT", image: "Punjabi", deliveryTime: 30, rating: 4.3, tags: ["Deal Rs.1", "New"]),
        Restaurant(name: "Taksh Veg", image: "taksh", deliveryTime: 30, rating: 4.2, tags: ["North Indian"]),
        Restaurant(name: "Shwarma King", image: "shwarma", deliveryTime: 15, rating: 4.8, tags: ["Freeship"]),

    ]
    
    
    static let foodItems = [
        Items(name: "Soya Chaap Special", price: 180, restaurant: "Ultimate Chaap House", image: "chaap"),
        Items(name: "Good Luck Coffee", price: 60, restaurant: "GoodLuck Cafe", image: "goodluck"),
        Items(name: "Punjabi Thali", price: 350, restaurant: "Punjabi TREAT", image: "Punjabi"),
        Items(name: "Veg Combo", price: 200, restaurant: "Taksh Veg", image: "taksh"),
        Items(name: "Chicken Shwarma", price: 140, restaurant: "Shwarma King", image: "shwarma"),
        Items(name: "Paneer Chaap", price: 120, restaurant: "Ultimate Chaap House", image: "chaap")
    ]
}
