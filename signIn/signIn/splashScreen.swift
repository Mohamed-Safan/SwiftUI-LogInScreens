import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("bgimg") // Use "bgimg" as the background image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    
                    Text("GreenThumb") // Beautiful text at the top
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
                            destination: SignInView(), // Navigate to SignInView
                            isActive: $isActive
                        ) {
                            EmptyView() // Use an EmptyView as the link label
                        }
                        .navigationBarHidden(true)
                    } else {
                        VStack {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle(tint: .green))
                                .scaleEffect(2) // Make the loading circle larger
                                .padding(.top, -10) // Move it slightly more to the top
                        }
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    isActive = true // Activate the NavigationLink
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
