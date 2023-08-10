//
//  signInApp.swift
//  signIn
//
//  Created by Safan on 2023-08-09.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var name = ""
    @State private var isSignInActive = false 
    
    var body: some View {
        ZStack {
            Image("signimg") // Background image 
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Register")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                    .padding(.top, 50)
                    .padding(.bottom, 20)
                
                
                Image("imgmidle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 400, height: 110)
                    .padding(.bottom, 20)
                
                
                TextField("Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .shadow(color: Color.black.opacity(0.6), radius: 3, x: 0, y: 3)
                
                TextField("Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .shadow(color: Color.black.opacity(0.6), radius: 3, x: 0, y: 3)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 10)
                    .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 3)
                
                Button(action: {
                   
                }) {
                    Text("Sign Up")
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .frame(width: 190)
                        .background(Color.green)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 3)
                
                }
                .padding(.vertical, 20)
                
                HStack {
                    Text("Already have an account?")
                        .foregroundColor(.white)
                    Button("Sign In") {
                        isSignInActive = true
                    }
                    .foregroundColor(.white)
                    .sheet(isPresented: $isSignInActive) {
                        SignInView() // navig SignInView
                    }
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
