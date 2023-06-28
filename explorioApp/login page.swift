/////https://accounts.google.com/v3/signin/identifier?dsh=S2097275425%3A1687976022955142&ifkv=AeDOFXgsKQHRm1o0O6q8qlI3HW54GoSqbobwMGaQ7T6U7YeWWOSF4Zk5bqlQbEMKn6-91tATouEYog&flowName=GlifWebSignIn&flowEntry=ServiceLogin
import SwiftUI
struct login_page: View {
  @State private var showSheet = false
  @State private var showSheet2 = false
  var body: some View {
    NavigationStack{
        VStack (alignment: .center){
          Image("star")
            .padding(.bottom, 45.0)
          VStack(alignment: .center){
            Button("Login"){
              self.showSheet = true
            }//end of login button
              .frame(width: 250, height: 55)
              .background(Color(red: 0.74, green: 0.42, blue: 0.15))
              .cornerRadius(15)
              .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
              .shadow(radius: 10)
              .padding(2)
            Button("Sign Up"){
              self.showSheet2 = true
            }//end of sign up button
              .frame(width: 250, height: 55)
              .background(Color(red: 0.74, green: 0.42, blue: 0.15))
              .cornerRadius(15)
              .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
              .shadow(radius: 10)
              .padding(2)
            NavigationLink(destination: homePage()) {
              Text("Continue as Guest")}
            .frame(width: 250.0, height: 55.0)
            .foregroundColor(Color(red: 0.38, green: 0.42, blue: 0.22))
          }//end of vstack
          HStack(alignment: .center){
            Text("--------------")
            Text("or")
            Text("--------------")
          }//end of hstack
          .padding(.bottom, 30)
          VStack{
            Link("Continue with Apple", destination: URL(string: "https://www.apple.com")!)
          }//end of vstack
          .frame(width: 250.0, height: 55)
          .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
          .background(Color(red: 0.38, green: 0.42, blue: 0.22))
          .cornerRadius(15)
          .shadow(radius: 8)
            Link("Continue with Google", destination: URL(string:"https://accounts.google.com/v3/signin/identifier?dsh=S2097275425%3A1687976022955142&ifkv=AeDOFXgsKQHRm1o0O6q8qlI3HW54GoSqbobwMGaQ7T6U7YeWWOSF4Zk5bqlQbEMKn6-91tATouEYog&flowName=GlifWebSignIn&flowEntry=ServiceLogin)")!)
            .frame(width: 250.0, height: 55.0)
            .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
            .background(Color(red: 0.38, green: 0.42, blue: 0.22))
            .cornerRadius(15)
            .shadow(radius: 8)
          Button("Continue with Email"){}
            .frame(width: 250.0, height: 55.0)
            .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
            .background(Color(red: 0.38, green: 0.42, blue: 0.22))
            .cornerRadius(15)
            .shadow(radius: 8)
            .sheet(isPresented: $showSheet){
              Text("Enter Name Here:")
              Button("Submit"){
                self.showSheet = false
              }
              .frame(width: 250.0, height: 55.0)
              .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
              .background(Color(red: 0.38, green: 0.42, blue: 0.22))
              .cornerRadius(15)
              .shadow(radius: 8)
            }
            .sheet(isPresented: $showSheet2){
              Text("SiGN UP HERE")
              Button("Submit"){
                self.showSheet2 = false
              }
              .frame(width: 250.0, height: 55.0)
              .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
              .background(Color(red: 0.38, green: 0.42, blue: 0.22))
              .cornerRadius(15)
              .shadow(radius: 8)
            }
        }//end of zsstack
      //end of nav stack
    }//end of body
  }//end of struct
  struct login_page_Previews: PreviewProvider {
    static var previews: some View {
      login_page()
    }
  }
}
