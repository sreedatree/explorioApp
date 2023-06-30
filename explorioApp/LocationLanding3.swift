//
//  LocationLanding3.swift
//  explorioApp
//
//  Created by Scholar on 6/29/23.
//easiuoh

import SwiftUI

struct LocationLanding3: View {
    struct GreenButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .fontWeight(.bold)
                .foregroundColor(.white)
                .accentColor(.clear)
                .frame(alignment: .center)
                .padding()
                .background(Color(red: 0.38, green: 0.42, blue: 0.22))
                .cornerRadius(15)
                .contentShape(Rectangle())
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.green, lineWidth: 0)
                )
        }
    }
    
    @State private var expanded = true
    var body: some View {
        //ScrollView {
            NavigationStack {
                VStack(alignment: .center) {
                    Text("**Welcome to**")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                        .padding()
                    Text("Mexico City, Mexico")
                        .font(.title)
                        .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                    
                    Divider()
                        .frame(width: 300, height: 1.5)
                        .overlay(Color(red: 0.375, green: 0.425, blue: 0.217))
                    Spacer()
                        .frame(height: 20)
                    
                    Group {
                        DisclosureGroup("Things To Do") {
                            Text("Content")
                                .multilineTextAlignment(.center)
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Weather") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        
                        DisclosureGroup("Food") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Stay") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Transportation") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(destination: LocationLanding()) {
                        Text("Randomize Location")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .background(Color(red: 0.375, green: 0.425, blue: 0.217))
                            .cornerRadius(15)
                    }
                    NavigationLink(destination: searchPage()) {
                        Text("Search Location")
                            .foregroundColor(Color.white)
                            .frame(width: 200, height: 50)
                            .background(Color(red: 0.375, green: 0.425, blue: 0.217))
                            .cornerRadius(15)
                    }
                }
            //}
        }
    }
    
    struct LocationLanding3_Previews: PreviewProvider {
        static var previews: some View {
            LocationLanding3()
        }
    }
}








