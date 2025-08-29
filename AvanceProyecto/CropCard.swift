//
//  CropCard.swift
//  AvanceProyecto
//
//  Created by Alumno on 29/08/25.
//

import SwiftUI

struct CropCard: View {
    let crop: Crop

    var body: some View {
        NavigationLink(destination: CultivoDetails(crop: crop)) {
            HStack(alignment: .top) {
                Image(crop.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .padding(5)
                    .cornerRadius(15)
                    .clipped()

                VStack(alignment: .leading, spacing: 8) {
                    Text(crop.difficulty)
                        .font(Font.custom("Inria Sans", size: 12).weight(.bold))
                        .padding(5)
                        .background(crop.difficultyColor)
                        .cornerRadius(5)
                        .foregroundColor(.black)

                    Text(crop.name)
                        .font(Font.custom("Inria Sans", size: 16).weight(.bold))

                    Text(crop.description)
                        .font(Font.custom("Inria Sans", size: 12))
                        .lineLimit(2)
                }
                .padding()
                .frame(width: 260, alignment: .leading)
                .background(Color.black.opacity(0.05))
                .cornerRadius(20)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
