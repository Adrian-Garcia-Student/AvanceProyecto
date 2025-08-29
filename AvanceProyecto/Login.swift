//
//  Login.swift
//  AvanceProyecto
//
//  Created by Alumno on 28/08/25.
//

import SwiftUI

struct Login: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var rememberMe: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Welcome to\nCosechiOS!")
                    .font(Font.custom("Inria Sans", size: 30).weight(.bold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding(.top, 40)
                
                Text("LOGIN")
                    .font(Font.custom("Inria Sans", size: 32))
                    .tracking(1.60)
                    .foregroundColor(.black)
                
                // Email Field
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(20)
                    .frame(width: 340, height: 60)
                    .autocapitalization(.none)
                
                // Password Field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(20)
                    .frame(width: 340, height: 60)
                
                HStack {
                    Toggle(isOn: $rememberMe) {
                        Text("Remember me")
                            .font(Font.custom("Inria Sans", size: 15))
                    }
                    .toggleStyle(CheckboxToggleStyle())
                    
                    Spacer()
                    
                    Button("Forgot password?") {
                        print("Forgot password tapped")
                    }
                    .font(Font.custom("Inria Sans", size: 15))
                    .foregroundColor(.black)
                }
                .frame(width: 340)
                
                // Login Button
                VStack(spacing: 16) {  // Espaciado vertical entre botones

                    NavigationLink(destination: Home()) {
                        Text("Continue")
                            .font(Font.custom("Inria Sans", size: 24).weight(.bold))
                            .foregroundColor(.white)
                            .frame(width: 200, height: 50)
                            .background(Color.black)
                            .cornerRadius(10)
                    }

                    Text("or")
                        .font(Font.custom("Inria Sans", size: 15).weight(.bold))
                        .padding(.top)

                    Button(action: {
                        print("Continue with option 1")
                    }) {
                        HStack {
                            Image(systemName: "person.circle")
                            Text("Continue with")
                        }
                        .font(Font.custom("Inria Sans", size: 16).weight(.bold))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                    }

                    Button(action: {
                        print("Continue with option 2")
                    }) {
                        HStack {
                            Image(systemName: "applelogo")
                            Text("Continue with")
                        }
                        .font(Font.custom("Inria Sans", size: 16).weight(.bold))
                        .foregroundColor(.black)
                        .frame(width: 200, height: 50)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black.opacity(0.5), lineWidth: 1)
                        )
                    }
                }

                    Spacer()
                }
                .padding()
            }
            .background(Color.white)
            .cornerRadius(20)
        }
    }
    
    // Custom toggle style for checkbox look
    struct CheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            Button(action: {
                configuration.isOn.toggle()
            }) {
                HStack {
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                    configuration.label
                }
            }
        }
    }
    

#Preview {
    NavigationStack{
        Login()
    }
}
