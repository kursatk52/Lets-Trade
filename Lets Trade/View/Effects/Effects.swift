//
//  Effects.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 31.12.2022.
//

import Foundation
import SwiftUI


class Effects{
    static let shared : Effects = Effects()
    
    private init(){}
  
    @ViewBuilder
    public func dropShadow(view : ()-> some View) -> some View{
        view().shadow(color: myColor.myQuternaryColor.getColor, radius: 5, x: 0, y: 0)
    }
}
