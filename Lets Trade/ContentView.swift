//
//  ContentView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 28.12.2022.
//

import SwiftUI


struct ContentView: View {
    
    @State var username : String = "asd"
    @State var username2 : Double = 1.5
    @StateObject var pageController = PageController()
    
    var body: some View {
        
        ZStack(alignment: .center){
            myColor.myPrimaryColor.getColor.ignoresSafeArea()
            
            switch pageController.pageType {
            case .regiser:
                registerPage()
                    .transition(.move(edge: .trailing).combined(with: .opacity))
            case .login:
                loginPage()
                    .transition(.move(edge: .leading).combined(with: .opacity))
            }
            
        }.environmentObject(pageController)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
