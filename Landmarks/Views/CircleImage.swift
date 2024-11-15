//
//  CircleImage.swift
//  Landmarks
//
//  Created by test on 11/15/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .shadow(radius: 10)
            .overlay {
                Circle().stroke(.green, lineWidth: 4)
            }
    }
}

#Preview {
    CircleImage()
}
