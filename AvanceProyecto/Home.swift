//
//  Home.swift
//  AvanceProyecto
//
//  Created by Alumno on 28/08/25.
//

import SwiftUI

// Modelo de datos
struct Crop: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let category: String
    let difficulty: String
    let description: String
    let difficultyColor: Color
    let growingTime: String
    let watering: String
}

// Vista principal
struct Home: View {
    @State private var searchText = ""
    @State private var selectedCategory = "All Crops"
    @State private var selectedDifficulty = "All"

    let categories = ["All Crops", "Vegetables", "Herbs", "Fruits", "Flowers"]
    let difficulties = ["All", "Easy", "Medium", "Hard"]

    let crops: [Crop] = [
        Crop(imageName: "Tomato", name: "Tomato", category: "Fruits",difficulty: "Medium", description: "Versatile and rewarding to grow, tomatoes are perfect for beginners and experienced gardeners alike.", difficultyColor: .yellow, growingTime: "3 months", watering: "Every 2 days"),
        Crop(imageName: "Lettuce", name: "Lettuce", category:"Vegetables", difficulty: "Easy", description: "Fast-growing leafy green that’s perfect for continuous harvesting and succession planting.", difficultyColor: .cyan, growingTime: "63-130 days", watering: "2 times a week")
    ]

    var filteredCrops: [Crop] {
        crops.filter { crop in
            let matchesCategory = selectedCategory == "All Crops" || crop.category == selectedCategory
            let matchesDifficulty = selectedDifficulty == "All" || crop.difficulty == selectedDifficulty
            let matchesSearch = searchText.isEmpty || crop.name.localizedCaseInsensitiveContains(searchText)
            return matchesCategory && matchesDifficulty && matchesSearch
        }
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Home - CosechiOS Guide")
                .font(Font.custom("Inria Sans", size: 28).weight(.bold))

            // Search Bar
            TextField("Search crops...", text: $searchText)
                .padding()
                .background(Color.black.opacity(0.05))
                .cornerRadius(20)

            // Categories
            Text("Categories")
                .font(Font.custom("Inria Sans", size: 20).weight(.medium))

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(categories, id: \.self) { category in
                        Button(action: {
                            selectedCategory = category
                        }) {
                            Text(category)
                                .font(Font.custom("Inria Sans", size: 16).weight(.bold))
                                .padding(.horizontal, 12)
                                .padding(.vertical, 8)
                                .background(selectedCategory == category ? Color.black : Color.white)
                                .foregroundColor(selectedCategory == category ? .white : .black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.black.opacity(0.5), lineWidth: 1)
                                )
                                .cornerRadius(10)
                        }
                    }
                }
            }

            // Difficulty
            Text("Difficulty")
                .font(Font.custom("Inria Sans", size: 20).weight(.medium))

            HStack(spacing: 12) {
                ForEach(difficulties, id: \.self) { level in
                    Button(action: {
                        selectedDifficulty = level
                    }) {
                        Text(level)
                            .font(Font.custom("Inria Sans", size: 16).weight(.bold))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 8)
                            .background(selectedDifficulty == level ? Color.black : Color.white)
                            .foregroundColor(selectedDifficulty == level ? .white : .black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
                            )
                            .cornerRadius(10)
                    }
                }
            }

            // Tarjetas de cultivo
            ScrollView {
                ForEach(filteredCrops) { crop in
                    CropCard(crop: crop)
                }
            }

            Spacer()
        }
        .padding()
        .background(Color.white)
    }
}

#Preview {
    NavigationView {
        Home()
    }
}
