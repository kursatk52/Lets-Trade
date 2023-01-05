//
//  profileView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 5.01.2023.
//

import SwiftUI

struct profileView: View {
    
    @State var postModels = PostModel.examples
    
    
    var body: some View {
        ZStack{
            myColor.myPrimaryColor.getColor.ignoresSafeArea()
            
            VStack{
                HStack (alignment: .bottom,spacing: 30){
                    
                    VStack(alignment: .center,spacing: 15) {
                        myMiniIcon(text: .constant(""), isToggle: .constant(true),size: 100)
                        Text("Kürşat Korkmaz")
                            .foregroundColor(myColor.myQuternaryColor.getColor)
                            .fixedSize(horizontal: true, vertical: true)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Spacer()
                        Label("92", systemImage: "person.3")
                            .foregroundColor(myColor.myQuternaryColor.getColor)
                        Spacer()
                        myButton(text: "Logout", width: 80, height: 20) {
                            print("Logout clicked")
                        }
                    }
                    
                    Image(systemName: "gearshape")
                        .resizable()
                        .foregroundColor(myColor.myQuternaryColor.getColor)
                        .frame(width: 30,height: 30)
                        .onTapGesture {
                            print("Setting Button.")
                        }
                }
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: .infinity)
                .padding(.horizontal)
                
                Divider()
                    .background(myColor.myQuternaryColor.getColor)
                    .padding(.top,15)
                
                ScrollView{
                    Spacer()
                        .frame(height: 10)
                    VStack(spacing: 25){
                        myPostView(postModel: PostModel.examples[0],isMenuShow: true)
                        myPostView(postModel: PostModel.examples[0],isMenuShow: true)
                        myPostView(postModel: PostModel.examples[0],isMenuShow: true)
                            
                    }
                    .padding(.horizontal)
                }
                
                
                
                Spacer()
            }
            .padding(.top, 15)
        }
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        profileView()
    }
}
