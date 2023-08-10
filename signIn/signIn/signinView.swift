import SwiftUI
import AuthenticationServices

struct SignInView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isSignUpActive = false // State for navigation
    
    var body: some View {
        ZStack {
            Image("signimg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Welcome Back")
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
                    // Sign-in button action
                }) {
                    Text("Sign In")
                        .foregroundColor(.white)
                        .padding(.vertical, 10)
                        .frame(width: 190)
                        .background(Color.green)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 3)
                }
                .padding(.vertical, 20)
                
                HStack {
                    Spacer()
                    Text("Don't have an account?")
                        .foregroundColor(.white)
                    
                    Button("Sign Up") {
                        isSignUpActive = true
                    }
                    .foregroundColor(.white)
                    .sheet(isPresented: $isSignUpActive) {
                        SignUpView()
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
                Spacer()
                
                Spacer()
                
                VStack {
                    Button(action: {
                        // Google Sign-In action
                    }) {
                        Image("googleimg")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 60) // Increased width and height
                            .padding()
                      
                          
                           
                    }
                    
                    
                    
                    Button(action: {
                        // Apple Sign-In action
                    }) {
                        Image("appleimg") // Replace with your Apple icon image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 245, height: 100) // Increased width and height
                            .padding(.bottom,60)
                           
                          
                    }
                }
                
                Spacer()
            }
           
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
