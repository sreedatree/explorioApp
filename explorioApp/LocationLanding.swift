import SwiftUI

struct LocationLanding: View {
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
        
     //   ScrollView{
            NavigationStack {
                VStack(alignment: .center) {
                    Text("**Welcome to**")
                        .font(.largeTitle)
                        .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                        .padding()
                    Text("Mumbai, India")
                        .font(.title)
                        .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                    
                    Divider()
                        .frame(width: 300, height: 1.5)
                        .overlay(Color(red: 0.375, green: 0.425, blue: 0.217))
                    Spacer()
                        .frame(height: 30)
                    
                    Group {
                        DisclosureGroup("Things To Do") {
                            Link(destination: URL(string: "https://www.lifestyleasia.com/ind/travel/india/things-to-do-in-mumbai/")!) {
                                Image("mumbai1")
                                    .resizable()
                                .frame(width: 200.0, height: 200.0)}
                            Link(destination: URL(string: "https://www.washingtonpost.com/travel/india/mumbai-local-guide/")!){
                                Image("mumbai2")
                                    .resizable()
                                .frame(width: 250.0, height: 150.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        DisclosureGroup("Weather") {
                            Link(destination: URL(string: "https://www.accuweather.com/en/in/mumbai/204842/weather-radar/204842")!) {
                                Image("mumbai7")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        
                        DisclosureGroup("Food") {
                            Link(destination: URL(string: "https://www.gqindia.com/live-well/content/list-of-best-vegetarian-restaurants-in-mumbai-for-your-veg-cravings-in-the-maximum-city")!) {
                                Image("mumbai3")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                            Link(destination: URL(string: "https://www.timeout.com/mumbai/restaurants/best-restaurants-in-mumbai")!) {
                                Image("mumbai8")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        DisclosureGroup("Stay") {
                            Link(destination: URL(string: "https://www.thebrokebackpacker.com/where-to-stay-in-mumbai-india/")!) {
                                Image("mumbai4")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        DisclosureGroup("Transportation") {
                            Link(destination: URL(string: "https://www.tripsavvy.com/getting-around-mumbai-4846564")!) {
                                Image("mumbai5")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                            Link(destination: URL(string: "https://www.theyoganomads.com/mumbai-transportation-guide-successfully-navigate-city-21-million-people/")!) {
                                Image("mumbai6")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                    }
                    
                    NavigationLink(destination: LocationLanding2()) {
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
        //}
    }
    
}
        struct LocationLanding_Previews: PreviewProvider {
            static var previews: some View {
                LocationLanding()
            }
        }
    

