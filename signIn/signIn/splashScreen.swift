//
//  splashScreen.swift
//  splashScreen
//
//  Created by Safan on 2023-08-09.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("bgimg") 
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text("GreenThumb") 
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(color: Color.black.opacity(0.5), radius: 5, x: 0, y: 5)
                        .padding(.top, 100)
                    Spacer()
                    Image("splshimg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                    Spacer()
                    
                    if isActive {
                        NavigationLink(
                            destination: SignInView(), // Navigate  SignInView
                            isActive: $isActive
                        ) {
                            EmptyView() /
                        }
                        .navigationBarHidden(true)
                    } else {
                        VStack {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .green))
                                .scaleEffect(2) 
                                .padding(.top, -10) 
                        }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    isActive = true 
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
