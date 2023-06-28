//
//  ContentView.swift
//  explorio
//
//  Created by Scholar on 6/27/23.
//
import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        NavigationStack{
            VStack {
                Text("**Welcome to**")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                Text("**Explorio!**")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                
                Image("explorioLogo")
                    .resizable()
                    .padding(.top)
                    .frame(width: 300.0, height: 300.0)
                
                
                Text("Explorio randomizes a location and provides information necessary for your travel plans.")
                    .font(.system(size: 20))
                    .multilineTextAlignment(.leading)
                    .padding(.top, 75.0)
                Spacer()
                
               
                
                NavigationLink(destination: login_page()) {
                    Text("Get Started")}
                .foregroundColor(Color.white)
                .frame(width: 393, height: 70)
                .background(Color(red: 0.375, green: 0.425, blue: 0.217))
                
                
            }
            .padding([.top, .leading, .trailing], 10.5)
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
