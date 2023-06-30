//
//  LocationLanding5.swift
//  explorioApp
//
//  Created by Scholar on 6/29/23.
//hey
//

import SwiftUI

struct LocationLanding5: View {
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
                    Text("Moscow, Russia")
                        .font(.title)
                        .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                    
                    Divider()
                        .frame(width: 300, height: 1.5)
                        .overlay(Color(red: 0.375, green: 0.425, blue: 0.217))
                    Spacer()
                        .frame(height: 20)
                    
                    Group {
                        DisclosureGroup("Things To Do") {
                            Text("")
                            Link(destination: URL(string:"https://www.tripadvisor.com/Attractions-g298484-Activities-Moscow_Central_Russia.html")!){
                                Image("moscow1")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Weather") {
                            Text("")
                            Link(destination: URL(string:"https://www.accuweather.com/en/ru/moscow/294021/weather-forecast/294021")!){
                                Image("moscow2")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        
                        DisclosureGroup("Food") {
                            Text("")
                            Link(destination: URL(string:"https://mindthetravel.com/10-russian-dishes-you-must-try/")!){
                                Image("moscow3")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Stay") {
                            Text("")
                            Link(destination: URL(string:"https://www.tripadvisor.com/Hotels-g298484-Moscow_Central_Russia-Hotels.html")!){
                                Image("moscow4")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Transportation") {
                            Text("")
                            Link(destination: URL(string:"https://weheart.moscow/publictransport/")!){
                                Image("moscow5")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
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
    
    struct LocationLanding5_Previews: PreviewProvider {
        static var previews: some View {
            LocationLanding5()
        }
    }
}
