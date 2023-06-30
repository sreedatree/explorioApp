/////https://accounts.google.com/v3/signin/identifier?dsh=S2097275425%3A1687976022955142&ifkv=AeDOFXgsKQHRm1o0O6q8qlI3HW54GoSqbobwMGaQ7T6U7YeWWOSF4Zk5bqlQbEMKn6-91tATouEYog&flowName=GlifWebSignIn&flowEntry=ServiceLogin
///chadhahhahahahahhahhahah
import SwiftUI
struct login_page: View {
    @State var isImagePickerShowing = false
    @State private var showSheet = false
    @State private var showSheet2 = false
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var username2: String = ""
    @State private var password2: String = ""
    @State private var password3: String = ""
    var body: some View {
        NavigationStack{
            VStack (alignment: .center){
                Image("star")
                    .padding(60)
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
                    NavigationView {
                        VStack{
                            NavigationLink(destination: homePage()) {
                                Text("Continue as Guest")}
                            .frame(width: 250.0, height: 5.0)
                            .foregroundColor(Color(red: 0.38, green: 0.42, blue: 0.22))
                            .padding(150)
                        }
                    }
                }
                }//end of vstack
                HStack(alignment: .center){
                    Divider()
                        .frame(width: 100, height: 1.5)
                        .overlay(Color(red: 0.375, green: 0.425, blue: 0.217))
                    Text("or")
                    Divider()
                        .frame(width: 100, height: 1.5)
                        .overlay(Color(red: 0.375, green: 0.425, blue: 0.217))
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
                

                    .sheet(isPresented: $showSheet2){
                        NavigationStack{

                            ZStack(alignment: .leadingFirstTextBaseline){
                            Button("< Back to Login page"){
                            self.showSheet2 = false
                        }
                            .frame(width: 250.0, height: 55.0)
                            .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
                            .background(Color(red: 0.74, green: 0.42, blue: 0.15))
                            .cornerRadius(15)
                            .shadow(radius: 8)}
                            .padding(.bottom, 100)
                            TextField("Create your Username", text: $username2)
                                .frame(width: 250.0, height: 55.0)
                                .foregroundColor(Color(red: 0.74, green: 0.42, blue: 0.15))
                                .border(Color(red: 0.38, green: 0.42, blue: 0.22))
                                .multilineTextAlignment(TextAlignment .center)
                                .padding(.bottom, 60)
                            TextField("Create your Password", text: $password2)
                            .frame(width: 250.0, height: 55.0)
                            .foregroundColor(Color(red: 0.74, green: 0.42, blue: 0.15))
                            .multilineTextAlignment(TextAlignment .center)
                            .border(Color(red: 0.38, green: 0.42, blue: 0.22))
                            .padding(.bottom, 10)
                            TextField("Confirm your Password", text: $password3)
                            .frame(width: 250.0, height: 55.0)
                            .foregroundColor(Color(red: 0.74, green: 0.42, blue: 0.15))
                            .multilineTextAlignment(TextAlignment .center)
                            .border(Color(red: 0.38, green: 0.42, blue: 0.22))
                            .padding(.bottom, 100)
                        
                               
                            VStack{NavigationLink(destination: homePage()) {
                                Text("Submit")
                                    }
                                    .frame(width: 250.0, height: 55.0)
                                    .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
                                    .background(Color(red: 0.74, green: 0.42, blue: 0.15))
                                    .cornerRadius(15)
                                    .shadow(radius: 8)}
                                    .padding(.bottom, 10)
                            
                    }
                    }
            }//end of zsstack
            //end of nav stack
            .sheet(isPresented: $showSheet){
                NavigationStack{

                    ZStack(alignment: .leadingFirstTextBaseline){
                    Button("< Back to Login page"){
                    self.showSheet = false
                }
                    .frame(width: 250.0, height: 55.0)
                    .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
                    .background(Color(red: 0.74, green: 0.42, blue: 0.15))
                    .cornerRadius(15)
                    .shadow(radius: 8)}
                    .padding(.bottom, 100)
                    TextField("Enter your Username", text: $username)
                        .frame(width: 250.0, height: 55.0)
                        .foregroundColor(Color(red: 0.74, green: 0.42, blue: 0.15))
                        .border(Color(red: 0.38, green: 0.42, blue: 0.22))
                        .multilineTextAlignment(TextAlignment .center)
                        .padding(.bottom, 60)
                    TextField("Enter your Password", text: $password)
                    .frame(width: 250.0, height: 55.0)
                    .foregroundColor(Color(red: 0.74, green: 0.42, blue: 0.15))
                    .multilineTextAlignment(TextAlignment .center)
                    .border(Color(red: 0.38, green: 0.42, blue: 0.22))
                    .padding(.bottom, 100)
                
                       
                    VStack{NavigationLink(destination: homePage()) {
                        Text("Submit")
                            }
                            .frame(width: 250.0, height: 55.0)
                            .foregroundColor(Color(red: 1, green: 0.98, blue: 0.88))
                            .background(Color(red: 0.74, green: 0.42, blue: 0.15))
                            .cornerRadius(15)
                            .shadow(radius: 8)}
                            .padding(.bottom, 10)
                    
            }
//                VStack{
//                    .sheet(isPresented: $isImagePickerShowing) {
//                                
//                            }
        }//end of body
    }//end of struct
}
  struct login_page_Previews: PreviewProvider {
    static var previews: some View {
      login_page()
    }
  }

