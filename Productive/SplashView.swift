//
//  SplashView.swift
//  Productive
//
//  Created by Elzine Brummelkamp on 2022/10/04.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false
    @State var isAnimating: Bool = false
    @State var isRotating: Bool = false
    var body: some View {
        VStack {
            if self.isActive {
                ContentView()
            } else {
                ZStack {
                    Color("Black").edgesIgnoringSafeArea(.all)
                    
                    Image("big_wheel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .rotationEffect(Angle.degrees(isAnimating ? 3000 : 0))
                        .animation(.linear.speed(0.01).repeatForever(autoreverses: false), value: isRotating)
                    
                    VStack(spacing: 20) {
                        Image("top_wheel")
                            .rotationEffect(Angle.degrees(isAnimating ? 600 : 0))
                            .animation(.easeInOut.speed(0.1).repeatForever(autoreverses: true), value: isAnimating)
                        
                        HStack {
                            Image("first_word")
                            
                            Image("bottom_wheel")
                                .scaleEffect(isAnimating ? 1.4 : 1)
                                .animation(.easeInOut.speed(0.1).repeatForever(autoreverses: true), value: isAnimating)
                            
                            Image("second_word")
                        }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .onAppear {
                    self.isAnimating = true
                    self.isRotating = true
                }
            }
        }
        .onAppear {
            self.isAnimating = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 8.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct Previews_SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
