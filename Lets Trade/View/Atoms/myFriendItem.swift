//
//  myFriendItem.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 6.01.2023.
//

import SwiftUI

struct myFriendItem: View {
    var body: some View {
        HStack{
            myMiniIcon(text: .constant(""), isToggle: .constant(true))
            VStack (alignment: .leading){
                Text("Kursat Korkmaz")
                    .font(.body.bold())
                Spacer()
                    .frame(height: 5)
                Text("Messages in short and it is very very very very very very long message")
                    .lineLimit(1)
                    .padding(.trailing)
            }
        }
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(myColor.myQuternaryColor.getColor)
        }
    }
}

struct myFriendItem_Previews: PreviewProvider {
    static var previews: some View {
        myFriendItem()
    }
}
