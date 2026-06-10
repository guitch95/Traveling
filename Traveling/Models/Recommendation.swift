//
//  Recommendation.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import Foundation
import SwiftUI

struct Recommendation: Identifiable, Codable, Hashable {
    var id = UUID()
    var name: String
    var localization: String
    var description: String?
    var rating: Double?
    var image: String?
    var isFavorite: Bool?
    var isVisited: Bool = false
    
}

enum Filter {
    case all
    case visited
    case notVisited
}

