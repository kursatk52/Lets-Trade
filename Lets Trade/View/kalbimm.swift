//
//  kalbimm.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 7.01.2023.
//

import SwiftUI

struct kalbimm: View {
    
    var miuw = """
    
    Nasılsın hayatımın anlamı!
    
    """
    
    var body: some View {
        
        ZStack{
            

            Circle()
                .fill(.yellow)
            
                 
            Rectangle()
                .frame(width: 60, height: 80)
            Text("\(miuw)") .font(.system(size: 90))
                .foregroundColor(Color(red: 0.8, green: 0.2, blue: 0.7))
        
            
            
                    
            
                
    
            
        }
        
    }
}

struct kalbimm_Previews: PreviewProvider {
    static var previews: some View {
        kalbimm()
    }
}

