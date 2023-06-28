//
//  login page.swift
//  explorio
//
//  Created by scholar on 6/27/23.
//

import SwiftUI
struct login_page: View {
    var body: some View {
        @State var showDetails = true
        NavigationStack{
            ZStack(alignment: .topLeading){
                VStack (alignment: .leading){
                      
                    VStack(){
                    Image("star")
                        .padding(.bottom, 75.0)
                    Button("Login"){
                    }//end of login button
                    .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .background(Color.gray)
                    .foregroundColor(.white)
                    
                    
                    Button("Sign Up"){
                        }//end of sign up button
                    .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
                    .background(Color.gray)
                    .foregroundColor(.white)
                        
                        
                        
        NavigationLink(destination: homePage()) {
            Text("Continue as Guest")}
        .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
        .cornerRadius(10)
        .background(Color.gray)
        .foregroundColor(.white)
    }
            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
                        }
                        
                    }
                    }
                }
            }
        
    





















struct login_page_Previews: PreviewProvider {
    static var previews: some View {
        login_page()
    }
}
