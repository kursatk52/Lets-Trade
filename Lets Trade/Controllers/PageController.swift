//
//  pageControl.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 2.01.2023.
//

import Foundation
import SwiftUI

enum page_Type {
    case regiser,login,logged
}


class PageController : ObservableObject{
    @Published var pageType : page_Type = .logged
}
