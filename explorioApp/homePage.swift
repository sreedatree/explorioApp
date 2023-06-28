//
//  homePage.swift
//  explorio
//
//  Created by Scholar on 6/27/23.
//hi

import SwiftUI

struct homePage: View {
    @State private var rotateangle: Double = 180
    @State private var rotationreaction: Double = 360
    var body: some View {
        NavigationStack {
            VStack {
                Text("Ready for Your Next Adventure?")
                    .font(.system(size: 18))
                Image("earth")
                    .resizable()
                    .frame(width: 200.0, height: 200.0)
                    .rotationEffect(Angle(degrees: rotateangle))
                    .onAppear {
                        withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: true)) {
                            rotateangle += rotationreaction
                        }
                    }
                
                
                NavigationLink(destination: LocationLanding()) {
                    Text("Randomize Location")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color(red: 0.375, green: 0.425, blue: 0.217))
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: searchPage()) {
                    Text("Search Location")
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color(red: 0.375, green: 0.425, blue: 0.217))
                        .cornerRadius(10)
                }
                
            }
            /*
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                    NavigationLink(destination: ContentView()) {
                    }
                }
            }
            */
        }
    }
    struct homePage_Previews: PreviewProvider {
        static var previews: some View {
            homePage()
        }
    }
}
