//
//  myMiniIcon.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 2.01.2023.
//

import SwiftUI

struct myMiniIcon: View {
    
    @State var isToggle : Bool = true
    
    var body: some View {
        Effects.shared.dropShadow {
            Image("me")
                .resizable()
                .frame(width: 80,height: 80)
                .mask {
                    Circle()
                        .frame(width: 80,height: 80)
                }
                .overlay {
                    Circle()
                        .stroke(lineWidth: 3)
                        .fill(isToggle ? myColor.myQuternaryColor.getColor : myColor.myTertiaryColor.getColor)
                }
        }
            
    }
}

struct myMiniIcon_Previews: PreviewProvider {
    static var previews: some View {
        myMiniIcon()
    }
}
