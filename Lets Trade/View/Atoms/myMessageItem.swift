//
//  myMessageItem.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 6.01.2023.
//

import SwiftUI

struct myMessageItem: View, Hashable {
    
    var id  = UUID()
    var text : String
    var isReceivedMessage : Bool
    
    init(_ text: String = "Deneme mesaj yazısı.", isReceivedMessage: Bool = false) {
        self.text = text
        self.isReceivedMessage = isReceivedMessage
    }
    
    var body: some View {
        HStack{
            if isReceivedMessage{
                myMiniIcon(text: .constant(""), isToggle: .constant(true))
                Text("\(text)")
                    .multilineTextAlignment(.leading)
                Spacer()
            }else{
                Spacer()
                Text("\(text)")
                    .multilineTextAlignment(.leading)
                myMiniIcon(text: .constant(""), isToggle: .constant(true))
            }
            
        }.frame(maxWidth: .infinity)
    }
}

struct myMessageItem_Previews: PreviewProvider {
    static var previews: some View {
        myMessageItem("asdasdaasdadsasdadadadssdsadasdadadsd", isReceivedMessage: true)
    }
}
