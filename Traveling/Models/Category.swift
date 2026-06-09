//
//  Category.swift
//  Traveling
//
//  Created by Guillaume Richard on 09/06/2026.
//

import Foundation
import SwiftUI

struct Category: Identifiable {
    let id = UUID()
    var image: ImageResource
    var name: String
}
