//
//  mySecureFieldView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 1.01.2023.
//

import SwiftUI

struct mySecureFieldView: View {
    
    @Binding var entry : String
    var placeHolder : String
    var cornerRadius : CGFloat
    var height : CGFloat
    var placeHolderColor : Color
    var foreGroundColor : Color
    var backGroundColor : Color
    
    init(entry: Binding<String>, placeHolder: String = "Type something...", cornerRadius: CGFloat = .infinity, height: CGFloat = 48, foreGroundColor : Color = myColor.myGray.getColor ,placeHolderColor : Color = myColor.myGray.getColor.opacity(0.7), backGroundColor : Color = myColor.myGray.getColor.opacity(0.2)) {
        self._entry = entry
        self.placeHolder = placeHolder
        self.cornerRadius = cornerRadius
        self.height = height
        self.placeHolderColor = placeHolderColor
        self.foreGroundColor = foreGroundColor
        self.backGroundColor = backGroundColor
    }
    
    var body: some View {
        SecureField("", text: $entry, prompt: Text("\(placeHolder)").foregroundColor(placeHolderColor))
            .foregroundColor(foreGroundColor)
            .padding(.horizontal,30)
            .frame(height: self.height)
            .background{
                RoundedRectangle(cornerRadius: self.cornerRadius)
                    .fill(backGroundColor)
        }
    }
}

struct mySecureFieldView_Previews: PreviewProvider {
    @State static var pass : String = ""
    static var previews: some View {
        mySecureFieldView(entry: $pass)
    }
}
