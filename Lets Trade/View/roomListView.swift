//
//  roomListView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 5.01.2023.
//

import SwiftUI

struct roomListView: View {
    
    @State var showDetailPost = false
    @State private var selectedPost : PostModel = PostModel(id: "2", product_type: "Laptop", amount: 17500, description: "Güzeldir PC")
    var body: some View {
        NavigationView {
            ZStack{
                myColor.myPrimaryColor.getColor
                    .ignoresSafeArea()
                VStack{
                    HStack(alignment: .bottom){
                        Text("Lets Trade")
                            .foregroundColor(myColor.myQuternaryColor.getColor)
                            .font(.title3.bold())
                        Spacer()
                        
                        NavigationLink(destination: friendListView()) {
                            myFriendsListIcon(ring: .constant(true))
                        }
                        
                        
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            myMiniIcon(text: .constant("Room 1"), isToggle: .constant(true),size: 80)
                            myMiniIcon(text: .constant("Room 2"), isToggle: .constant(true),size: 80)
                            myMiniIcon(text: .constant("Room 3"), isToggle: .constant(true),size: 80)
                            myMiniIcon(text: .constant("Room 4"), isToggle: .constant(true),size: 80)
                            myMiniIcon(text: .constant("Room 5"), isToggle: .constant(true),size: 80)
                            myMiniIcon(text: .constant("Room 6"), isToggle: .constant(true),size: 80)
                        }
                    }
                    .padding(.leading,2)
                    
                    ScrollView(.vertical,showsIndicators: false) {
                        VStack(spacing: 20){
                            myPostView(postModel: PostModel.examples[0],isMenuShow: false)
                                .onTapGesture {
                                    selectedPost = PostModel.examples[0]
                                    showDetailPost.toggle()
                                }
                            myPostView(postModel: PostModel.examples[0],isMenuShow: false)
                                .onTapGesture {
                                    showDetailPost.toggle()
                                }
                            myPostView(postModel: PostModel.examples[0],isMenuShow: false)
                            myPostView(postModel: PostModel.examples[0],isMenuShow: false)
                        }
                        .padding(2)
                        .sheet(isPresented: $showDetailPost) {
                            PostDetailView(selectedPost: $selectedPost)
                            Spacer()
                            myButton(text: "Contract with Seller", width: 100, height: 30) {
                                print("Contact button clicked!")
                            }
                        }
                    }
                    .padding()
                    
                    
                    Spacer()
                }
            }
        }
    }
}



struct PostDetailView : View{
    
    @Binding var selectedPost : PostModel
    
    var body : some View{
        myPostView(postModel: selectedPost)
    }
}

struct roomListView_Previews: PreviewProvider {
    static var previews: some View {
        roomListView()
    }
}
