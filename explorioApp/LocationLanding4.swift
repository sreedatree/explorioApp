//
//  LocationLanding4.swift
//  explorioApp
//hiuhiu
//  Created by Scholar on 6/29/23.
//

import SwiftUI

struct LocationLanding4: View {
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
        ScrollView {
            NavigationStack {
                VStack(alignment: .center) {
                    Text("**Welcome to**")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                        .padding()
                    Text("Milan, Italy")
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
                            Link(destination: URL(string:"https://www.timeout.com/milan/things-to-do/best-things-to-do-in-milan")!){
                                Image("milan1")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Weather") {
                            Text("")
                            Link(destination: URL(string:"https://www.accuweather.com/en/it/milan/214046/weather-forecast/214046")!){
                                Image("milan2")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        
                        DisclosureGroup("Food") {
                            Text("")
                            Link(destination: URL(string:"https://www.eater.com/maps/best-milan-restaurants-38")!){
                                Image("milan3")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Stay") {
                            Text("")
                            Link(destination: URL(string:"https://www.booking.com/luxury/city/it/milan.html?aid=2049320&label=milan-Cp%2Aziio3zA1EP48MjJRirwS452425267906%3Apl%3Ata%3Ap1%3Ap2%3Aac%3Aap%3Aneg%3Afi%3Atikwd-807229581%3Alp9009741%3Ali%3Adec%3Adm&gclid=CjwKCAjw-vmkBhBMEiwAlrMeFw2LFaUeR3KCwBFU6aWU4Xg_AsXZDFxmHeiGHHGCkfCDdOX1vvcF6hoCEaAQAvD_BwE&keep_landing=1&sid=9efad455fa2b58e5b2b4ff620de06865")!){
                                Image("milan4")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                        
                        DisclosureGroup("Transportation") {
                            Text("")
                            Link(destination: URL(string:"https://www.timeout.com/milan/things-to-do/public-transportation-in-milan")!){
                                Image("milan5")
                                    .resizable(resizingMode: .stretch)
                                    .frame(width: 250.0, height: 200.0)
                                .multilineTextAlignment(.center)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 1, trailing: 60))
                    }
                    
                    Spacer()
                        .frame(height: 30)
                    
                    NavigationLink(destination: LocationLanding3()) {
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
            }
        }
    }
    
    struct LocationLanding4_Previews: PreviewProvider {
        static var previews: some View {
            LocationLanding4()
        }
    }
}

