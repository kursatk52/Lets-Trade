//
//  myCurrencyTextView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 31.12.2022.
//

import SwiftUI

struct myCurrencyTextView: View {
    
    @Binding var entry : Double
    var placeHolder : String
    var cornerRadius : CGFloat
    var height : CGFloat
    var placeHolderColor : Color
    var foreGroundColor : Color
    var backGroundColor : Color
    
    init(entry: Binding<Double>, placeHolder: String = "Type something...", cornerRadius: CGFloat = .infinity, height: CGFloat = 48, foreGroundColor : Color = myColor.myQuternaryColor.getColor ,placeHolderColor : Color = myColor.myQuternaryColor.getColor.opacity(0.4), backGroundColor : Color = myColor.myQuternaryColor.getColor.opacity(0.2)) {
        self._entry = entry
        self.placeHolder = placeHolder
        self.cornerRadius = cornerRadius
        self.height = height
        self.placeHolderColor = placeHolderColor
        self.foreGroundColor = foreGroundColor
        self.backGroundColor = backGroundColor
    }
    
    
    private var formetter : NumberFormatter = {
        var formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        return formatter
    }()
    
    
    var body: some View {
        
            TextField("", value: $entry, formatter: formetter, prompt: Text("\(placeHolder)").foregroundColor(placeHolderColor))
                .foregroundColor(foreGroundColor)
                .padding(.horizontal,30)
                .frame(height: self.height)
                .background{
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: self.cornerRadius)
                            .fill(backGroundColor)
                        Text("₺")
                            .foregroundColor(foreGroundColor)
                            .padding(.leading,13)
                    }
            }
        
    }
}

struct myCurrencyTextView_Previews: PreviewProvider {
    @State static var deneme : Double = 1.4
    static var previews: some View {
        
        myCurrencyTextView(entry:$deneme)
    }
}
