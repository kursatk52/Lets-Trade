//
//  myColor.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 31.12.2022.
//

import Foundation
import SwiftUI

enum myColor{
    case myPrimaryColor
    case mySecondaryColor
    case myTertiaryColor
    case myQuternaryColor
    case myGray
    
    var getColor : Color {
        switch self{
        case .myPrimaryColor:
            return Color("myPrimaryColor")
        case .mySecondaryColor:
            return Color("mySecondaryColor")
        case .myTertiaryColor:
            return Color("myTertiaryColor")
        case .myQuternaryColor:
            return Color("myQuternaryColor")
        case .myGray:
            return Color("myGray")
        }
    }
        
}
