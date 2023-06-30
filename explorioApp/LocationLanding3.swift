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
        
            //ScrollView{
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
                        .frame(height: 30)
                    
                    Group {
                        DisclosureGroup("Things To Do") {
                            Link(destination: URL(string: "https://www.tripadvisor.com/Attractions-g150800-Activities-Mexico_City_Central_Mexico_and_Gulf_Coast.html")!) {
                                Image("Mexcity1")
                                    .resizable()
                                .frame(width: 200.0, height: 200.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        DisclosureGroup("Weather") {
                            Link(destination: URL(string: "https://www.accuweather.com/en/mx/mexico-city/242560/weather-forecast/242560")!) {
                                Image("Mexcity2")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        
                        DisclosureGroup("Food") {
                            Link(destination: URL(string: "https://travellemming.com/mexico-city-food/")!) {
                                Image("Mexcity3")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        DisclosureGroup("Stay") {
                            Link(destination: URL(string: "https://www.expedia.com/Hotel-Search?destination=Mexico%20City%2C%20Mexico&endDate=2023-07-15&gclid=CjwKCAjw-vmkBhBMEiwAlrMeF9qcLnw4KN1sWnIwb9ZYvmoEOC0VRqtvjg7fmrw7dnN4SgGRkuPoDxoCtXQQAvD_BwE&locale=en_US&regionId=2265&semcid=US.UB.GOOGLE.DT-c-EN.HOTEL&semdtl=a111798312324.b1113518399166.g1kwd-778664431.e1c.m1CjwKCAjw-vmkBhBMEiwAlrMeF9qcLnw4KN1sWnIwb9ZYvmoEOC0VRqtvjg7fmrw7dnN4SgGRkuPoDxoCtXQQAvD_BwE.r1ee8c1c7d13174d4dc9590c0ee93e76a24d305fd29c1c8fe18a4a26b7114560e4.c1.j19009741.k1.d1618764215320.h1e.i1.l1.n1.o1.p1.q1.s1.t1.x1.f1.u1.v1.w1&siteid=1&sort=RECOMMENDED&startDate=2023-07-14&theme=&useRewards=false&userIntent=")!) {
                                Image("Mexcity4")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                            Link(destination: URL(string: "https://www.hotels.com/de830421/hotels-mexico-city-mexico/")!) {
                                Image("Mexcity4.2")
                                    .resizable()
                                .frame(width: 200.0, height: 170.0)}
                        }
                        .buttonStyle(GreenButtonStyle())
                        .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
                        
                        DisclosureGroup("Transportation") {
                            Link(destination: URL(string: "https://sallysees.com/best-way-to-get-around-mexico-city/")!) {
                                Image("Mexcity5")
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
        struct LocationLanding3_Previews: PreviewProvider {
            static var previews: some View {
                LocationLanding3()
            }
        }
    

