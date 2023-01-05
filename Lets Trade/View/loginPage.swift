//
//  loginPage.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 1.01.2023.
//

import SwiftUI

struct loginPage: View {
    
   
    
    @State var temp_username : String = ""
    @State var temp_password : String = ""
    @EnvironmentObject private var pageController : PageController
    
    var body: some View {
        
            VStack{
                Spacer()
                Effects.shared.dropShadow {
                    Text("Lets Trade")
                        .foregroundColor(myColor.myQuternaryColor.getColor)
                        .font(.title.bold())
                }
                
                Spacer()
                
                Effects.shared.dropShadow {
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundColor(myColor.myQuternaryColor.getColor)
                        .frame(width:100,height: 100)
                }
                
                Text("Login")
                    .foregroundColor(myColor.myQuternaryColor.getColor)
                    .font(.title2.bold())
                
                ZStack(alignment: .center) {
                    Effects.shared.dropShadow {
                        RoundedRectangle(cornerRadius: 30)
                            .fill(myColor.myQuternaryColor.getColor)
                            .frame(height: 220)
                    }
                    VStack{
                        Spacer()
                        HStack{
                            Spacer(minLength: 32)
                            Text("E-mail: ")
                            Spacer()
                            myPlainTextView(entry: $temp_username,placeHolder: "Enter the email")
                                .frame(width: 270)
                        }.padding(.horizontal)
                        
                        HStack{
                            Spacer()
                            Text("Password: ")
                            Spacer()
                            mySecureFieldView(entry: $temp_password,placeHolder: "Enter the password")
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
                
                Text("Haven’t account? Create account.")
                    .foregroundColor(myColor.myQuternaryColor.getColor)
                    .onTapGesture {
                        withAnimation {
                            pageController.pageType = .regiser
                        }
                    }
                
            }
            .padding(.horizontal)
            
        
    }
}

struct loginPage_Previews: PreviewProvider {
    static var previews: some View {
        loginPage()
    }
}
