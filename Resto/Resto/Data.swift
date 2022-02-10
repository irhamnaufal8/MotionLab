//
//  Data.swift
//  Resto
//
//  Created by Garry on 03/02/22.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID().uuidString
    var image: String
}

struct Icon: Identifiable {
    var id = UUID().uuidString
    var image: String
    var name: String
}

struct Resto: Identifiable {
    var id = UUID().uuidString
    var image: String
    var name: String
    var onStar: Int
    var offStar: Int
    var rateLabel: String
    var distance: String
}

var icons = [
    Icon(image: "menu sehat", name: "Menu Sehat"),
    Icon(image: "promo", name: "Promo"),
    Icon(image: "menu ayam", name: "Menu Ayam"),
    Icon(image: "cepat saji", name: "Cepat Saji")
]

var squarePromo = [
    Item(image: "square card promo 1"),
    Item(image: "square card promo 2"),
    Item(image: "square card promo 3")
]

var landscapePromo = [
    Item(image: "card promo 1"),
    Item(image: "card promo 2"),
    Item(image: "card promo 3")
]

var restos = [
    Resto(image: "pizza hut", name: "Pizza Hut", onStar: 4, offStar: 1, rateLabel: "4.5", distance: "3.4 km"),
    Resto(image: "kfc", name: "KFC", onStar: 4, offStar: 1, rateLabel: "4.7", distance: "4.8 km"),
    Resto(image: "mcd", name: "McDonald", onStar: 4, offStar: 1, rateLabel: "4.6", distance: "8.9 km")
]
