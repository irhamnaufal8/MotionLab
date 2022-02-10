//
//  University.swift
//  LabMotion
//
//  Created by Garry on 03/02/22.
//

import Foundation

// Codeable
// Paket dari Decodable & Encodable
// Pada saat kita dapat data dan mau men-decode JSON
// kalo decodeable dari data ke objek
// Identifieable memberi tahu kalo struct itu unik
// tidak perlu identifieable kalau udah pake codeable

typealias Universities = [University]

struct University: Codable {
    let name: String
    let country: String
}
