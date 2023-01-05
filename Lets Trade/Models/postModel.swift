//
//  postModel.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 5.01.2023.
//

import Foundation


struct PostModel {
    var id : String
    var product_type : String
    var amount : Double
    var description : String
}

extension PostModel{
    
    
    
    
    static var examples : [PostModel] = [PostModel(id: "1" ,product_type: "Telefon", amount: 30000, description: "Lorem ipsum dolar sit amet")]
    
}
