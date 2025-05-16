//
//  TaskView.swift
//  TahDoodle
//
//  Created by Edwin Cardenas on 5/16/25.
//

import SwiftUI

struct TaskView: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .padding(.vertical, 4)
            .font(.title3)
    }
}

#Preview {
    TaskView(title: "Take out the trash")
}
