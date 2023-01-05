//
//  myMiniIcon.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 2.01.2023.
//

import SwiftUI

struct myMiniIcon: View {
    
    @Binding var text : String
    @Binding var isToggle : Bool
    
    var size : CGFloat = 80
    
    var body: some View {
        Effects.shared.dropShadow {
            VStack {
                Image("me")
                    .resizable()
                    .frame(width: size,height: size)
                    .mask {
                        Circle()
                            .frame(width: size,height: size)
                    }
                    .overlay {
                        Circle()
                            .stroke(lineWidth: 3)
                            .fill(isToggle ? myColor.myQuternaryColor.getColor : myColor.myTertiaryColor.getColor)
                }
                
                if (!text.isEmpty){
                    Text("\(text)")
                        .foregroundColor(myColor.myQuternaryColor.getColor)
                        .font(.body.bold())
                        .frame(maxWidth: size + (size/3.0))
                        .lineLimit(1)
                }
                
            }
            .padding(10)
            .fixedSize(horizontal: true, vertical: false)
        }
            
    }
}

struct myMiniIcon_Previews: PreviewProvider {
    static var previews: some View {
        myMiniIcon(text: .constant(""),isToggle: .constant(true),size: 120)
    }
}
