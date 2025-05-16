//
//  Task.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import Foundation

struct Task: Equatable, Identifiable, Codable {
    let id: UUID
    let title: String
    
    init(title: String) {
        id = UUID()
        self.title = title
    }
}
