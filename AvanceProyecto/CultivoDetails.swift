//
//  CultivoDetails.swift
//  AvanceProyecto
//
//  Created by Alumno on 29/08/25.
//

import SwiftUI

struct CultivoDetails: View {
    let crop: Crop

    var body: some View {
        VStack(spacing: 20) {
            Image(crop.imageName)
                .resizable()
                .frame(width: 360, height: 300)
                .cornerRadius(20)
            
            Text(crop.name)
                .font(.title)
                .bold()

            Text(crop.description)
                .font(.body)

            Text("Difficulty: \(crop.difficulty)")
                .foregroundColor(crop.difficultyColor)

            Text("Growing Time: \(crop.growingTime)")
            Text("Watering: \(crop.watering)")
        }
        .padding()
    }
}

#Preview{
    CultivoDetails(crop: Crop(
            imageName: "Tomato",
            name: "Tomato",
            category: "Fruits",
            difficulty: "Medium",
            description: "Versatile and rewarding to grow, tomatoes are perfect for beginners and experienced gardeners alike.",
            difficultyColor: .yellow,
            growingTime: "3 months",
            watering: "Every 2 days"
    ))
}
