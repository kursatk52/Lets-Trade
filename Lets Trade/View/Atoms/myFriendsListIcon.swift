//
//  myFriendsListIcon.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 5.01.2023.
//

import SwiftUI

struct myFriendsListIcon: View {
    
    @Binding var ring : Bool
    
    var body: some View {
        HStack(alignment: .bottom){
            Image(systemName: "person.3.fill")
                .resizable()
                .frame(width: 45,height: 25)
                .foregroundColor(myColor.myQuternaryColor.getColor)
            if ring{
                Circle()
                    .fill(myColor.myTertiaryColor.getColor)
                    .frame(width: 10,height: 10)
                    .offset(x: -20,y: -25)
                    .padding(.top,25)
                    .padding(.trailing,-20)
            }
        }
    }
}

struct myFriendsListIcon_Previews: PreviewProvider {
    static var previews: some View {
        myFriendsListIcon(ring: .constant(true))
    }
}
