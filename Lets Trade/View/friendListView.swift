//
//  friendListView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 6.01.2023.
//

import SwiftUI

struct friendListView: View {
    init(){
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(myColor.myTertiaryColor.getColor)]
    }
    
    var body: some View {
        ZStack{
            myColor.myPrimaryColor.getColor
                .ignoresSafeArea()
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack (spacing: 15){
                        myFriendItem()
                        myFriendItem()
                        myFriendItem()
                        myFriendItem()
                        myFriendItem()
                        myFriendItem()
                        myFriendItem()
                        myFriendItem()
                        myFriendItem()
                    }
                })
                .padding()
                .navigationTitle("Friend List")
                
        }
    }
}

struct friendListView_Previews: PreviewProvider {
    static var previews: some View {
        friendListView()
    }
}
