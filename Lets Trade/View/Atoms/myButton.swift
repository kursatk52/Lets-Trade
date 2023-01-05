//
//  myButton.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 31.12.2022.
//

import SwiftUI

struct myButton: View {
    
    @State private var isClicked = false
    
    var action : ()->Void = {
        print("Buttpn clicked")
    }
    
    var text : String
    var height : CGFloat
    var width : CGFloat
    
    init(text : String = "Click me" ,width: CGFloat = 50, height: CGFloat = 30, action : @escaping ()->Void) {
        self.height = height
        self.width = width
        self.action = action
        self.text = text
    }
    
    
    var body: some View {
        Text("\(text)")
            .padding(.vertical,height/2)
            .padding(.horizontal,width/2)
            .background{
                RoundedRectangle(cornerRadius: 20)
                    .fill(myColor.myTertiaryColor.getColor)
                    .onTapGesture {
                        action()
                        isClicked = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05){
                            withAnimation {
                                isClicked = false
                            }
                        }
                    }
            }
            .foregroundColor(myColor.myQuternaryColor.getColor)
            .font(.body)
            .opacity(isClicked ? 0.5 : 1)
    }
}

struct myButton_Previews: PreviewProvider {
    static var previews: some View {
        myButton {
            print("Asd")
        }
    }
}
