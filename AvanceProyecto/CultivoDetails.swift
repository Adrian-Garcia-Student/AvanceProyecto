//
//  CultivoDetails.swift
//  AvanceProyecto
//
//  Created by Alumno on 29/08/25.
//

import SwiftUI

struct CultivoDetails: View {
  var body: some View {
    ZStack() {
      Group {
        Text("Tomatoes")
          .font(Font.custom("Inria Sans", size: 30).weight(.bold))
          .foregroundColor(.black)
          .offset(x: 0, y: -338.50)
        Text("Versatile and rewarding to grow, tomatoes are perfect for beginners and experienced gardeners alike.")
          .font(Font.custom("Inria Sans", size: 24))
          .foregroundColor(.black)
          .offset(x: 0, y: -247)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 150, height: 35)
          .background(.white)
          .cornerRadius(10)
          .overlay(
            RoundedRectangle(cornerRadius: 10)
              .inset(by: 1)
              .stroke(Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 1)
          )
          .offset(x: -95, y: -152.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 95, height: 35)
          .background(.white)
          .cornerRadius(10)
          .overlay(
            RoundedRectangle(cornerRadius: 10)
              .inset(by: 1)
              .stroke(Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 1)
          )
          .offset(x: 47.50, y: -152.50)
        Text("Medium")
          .font(Font.custom("Inria Sans", size: 20).weight(.bold))
          .foregroundColor(.black)
          .offset(x: 47.50, y: -152.50)
        Text("Vegetables")
          .font(Font.custom("Inria Sans", size: 20).weight(.bold))
          .foregroundColor(.black)
          .offset(x: -82, y: -153)
        Text("65-80 days from transplant.")
          .font(Font.custom("Inria Sans", size: 17))
          .foregroundColor(.black)
          .offset(x: 2, y: -101)
        Text("Deep watering 2-3 times per week.")
          .font(Font.custom("Inria Sans", size: 17))
          .foregroundColor(.black)
          .offset(x: 2, y: -57)
      };Group {
        ZStack() {

        }
        .frame(width: 24, height: 24)
        .offset(x: -147, y: -57)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 150, height: 150)
          .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
          .cornerRadius(20)
          .offset(x: -203, y: 52)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 225, height: 150)
          .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
          .cornerRadius(20)
          .offset(x: -0.50, y: 52)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 225, height: 150)
          .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
          .cornerRadius(20)
          .offset(x: 239.50, y: 52)
        Text("Tutorial")
          .font(Font.custom("Inria Sans", size: 20))
          .foregroundColor(.black)
          .offset(x: -40, y: 166)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 280, height: 150)
          .background(Color(red: 0.50, green: 0.23, blue: 0.27).opacity(0.50))
          .cornerRadius(20)
          .offset(x: 0, y: 275)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 200, height: 50)
          .background(.black)
          .cornerRadius(10)
          .overlay(
            RoundedRectangle(cornerRadius: 10)
              .inset(by: 1)
              .stroke(Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 1)
          )
          .offset(x: 0, y: 394)
      };Group {
        Text("Save")
          .font(Font.custom("Inria Sans", size: 24).weight(.bold))
          .foregroundColor(.white)
          .offset(x: 0, y: 390.50)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 16, height: 16)
          .offset(x: 110, y: -212)
      }
    }
    .frame(width: 402, height: 874)
    .background(.white)
    .cornerRadius(20);
  }
}

#Preview {
    CultivoDetails()
        .modelContainer(for: Item.self, inMemory: true)
}
