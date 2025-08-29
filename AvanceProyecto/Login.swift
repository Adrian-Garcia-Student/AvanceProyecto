//
//  Login.swift
//  AvanceProyecto
//
//  Created by Alumno on 28/08/25.
//

import SwiftUI

struct Login: View {
  var body: some View {
    ZStack() {
      Group {
        Text("Welcome to\nCosechiOS!")
          .font(Font.custom("Inria Sans", size: 30).weight(.bold))
          .foregroundColor(.black)
          .offset(x: 0, y: -315.50)
        Text("LOGIN")
          .font(Font.custom("Inria Sans", size: 32))
          .tracking(1.60)
          .foregroundColor(.black)
          .offset(x: 0.50, y: -212.50)
        ZStack() {
          Text("Email")
            .font(Font.custom("Inria Sans", size: 20).weight(.bold))
            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.15))
            .offset(x: 15, y: -1.50)
          ZStack() {

          }
          .frame(width: 20, height: 18)
          .offset(x: -141, y: 0)
        }
        .frame(width: 340, height: 60)
        .background(Color(red: 0, green: 0, blue: 0).opacity(0.05))
        .cornerRadius(20)
        .offset(x: 0, y: -127)
        ZStack() {
          Text("Password")
            .font(Font.custom("Inria Sans", size: 20).weight(.bold))
            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.15))
            .offset(x: 15, y: -1.50)
          ZStack() {

          }
          .frame(width: 24, height: 24)
          .offset(x: -140, y: 0)
          ZStack() {

          }
          .frame(width: 25, height: 25)
          .offset(x: 133.50, y: -0.50)
        }
        .frame(width: 340, height: 60)
        .background(Color(red: 0, green: 0, blue: 0).opacity(0.05))
        .cornerRadius(20)
        .offset(x: 0, y: -30)
        Text("Forgot password?")
          .font(Font.custom("Inria Sans", size: 15))
          .foregroundColor(.black)
          .offset(x: 113, y: 27.50)
        Text("or")
          .font(Font.custom("Inria Sans", size: 15).weight(.bold))
          .foregroundColor(.black)
          .offset(x: 0, y: 149.50)
        Text("Remember me")
          .font(Font.custom("Inria Sans", size: 15))
          .foregroundColor(.black)
          .offset(x: -89, y: 27.50)
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
          .offset(x: 0, y: 92)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 200, height: 50)
          .background(Color(red: 0, green: 0.40, blue: 1))
          .cornerRadius(10)
          .overlay(
            RoundedRectangle(cornerRadius: 10)
              .inset(by: 1)
              .stroke(Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 1)
          )
          .offset(x: 0, y: 207)
        Rectangle()
          .foregroundColor(.clear)
          .frame(width: 200, height: 50)
          .background(.white)
          .cornerRadius(10)
          .overlay(
            RoundedRectangle(cornerRadius: 10)
              .inset(by: 1)
              .stroke(Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 1)
          )
          .offset(x: 0, y: 281)
      };Group {
        Text("Continue")
          .font(Font.custom("Inria Sans", size: 24).weight(.bold))
          .foregroundColor(.white)
          .offset(x: 0, y: 87.50)
        Text("Continue with")
          .font(Font.custom("Inria Sans", size: 16).weight(.bold))
          .foregroundColor(.white)
          .offset(x: -32, y: 205)
        Text("Continue with")
          .font(Font.custom("Inria Sans", size: 16).weight(.bold))
          .foregroundColor(.black)
          .offset(x: -32, y: 279)
        ZStack() {

        }
        .frame(width: 26, height: 26)
        .offset(x: 71, y: 281)
      }
    }
    .frame(width: 402, height: 874)
    .background(.white)
    .cornerRadius(20);
  }
}

#Preview {
    Login()
        .modelContainer(for: Item.self, inMemory: true)
}

