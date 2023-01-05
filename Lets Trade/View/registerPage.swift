//
//  registerPage.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 1.01.2023.
//

import SwiftUI

struct registerPage: View {
    
    @State var temp_username : String = ""
    @State var temp_password : String = ""
    @State var temp_re_password : String = ""
    
    @EnvironmentObject private var pageController : PageController
    
    var body: some View {
        ZStack{
            myColor.myPrimaryColor.getColor.ignoresSafeArea()
            VStack{
                Spacer()
                Effects.shared.dropShadow {
                    Text("Lets Trade")
                        .foregroundColor(myColor.myQuternaryColor.getColor)
                        .font(.title.bold())
                }
                
                Spacer()
                
                Effects.shared.dropShadow {
                    Image(systemName: "person.fill.badge.plus")
                        .resizable()
                        .foregroundColor(myColor.myQuternaryColor.getColor)
                        .frame(width:100,height: 100)
                }
                
                Text("Register")
                    .foregroundColor(myColor.myQuternaryColor.getColor)
                    .font(.title2.bold())
                
                ZStack(alignment: .center) {
                    Effects.shared.dropShadow {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(myColor.myQuternaryColor.getColor)
                            .frame(height: 270)
                    }
                    VStack{
                        Spacer()
                        HStack{
                            Spacer(minLength: 32)
                            Text("E-mail: ")
                                .font(.system(size: 12))
                            Spacer()
                            myPlainTextView(entry: $temp_username,placeHolder: "Enter the email")
                                .frame(width: 270)
                        }.padding(.horizontal)
                        
                        HStack{
                            Spacer()
                            Text("Password: ")
                                .font(.system(size: 12))
                            Spacer()
                            mySecureFieldView(entry: $temp_password,placeHolder: "Enter the password")
                                .frame(width: 270)
                        }.padding(.horizontal)
                        
                        HStack{
                            Spacer()
                            Text("Re-password: ")
                                .font(.system(size: 12))
                            Spacer()
                            mySecureFieldView(entry: $temp_re_password,placeHolder: "Enter the password again")
                                .frame(width: 270)
                        }.padding(.horizontal)
                        
                        myButton(text: "Login",width: 190,height: 20){
                            print("Login button clicked!")
                            
                        }
                        
                        Spacer()
                     
                    }.fixedSize(horizontal: false,vertical: true)
                }
                
                Spacer()
                Spacer()
                
                Text("Have you account? Login.")
                    .foregroundColor(myColor.myQuternaryColor.getColor)
                    .onTapGesture {
                        withAnimation {
                            pageController.pageType = .login
                        }
                    }
                
            }
            .padding(.horizontal)
        }
    }
}

struct registerPage_Previews: PreviewProvider {
    static var previews: some View {
        registerPage()
    }
}
