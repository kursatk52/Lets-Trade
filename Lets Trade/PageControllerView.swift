//
//  ContentView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 28.12.2022.
//

import SwiftUI


struct PageControllerView: View {
    
    @State var username : String = "asd"
    @State var username2 : Double = 1.5
    @StateObject var pageController = PageController()
    
    @Namespace private var pageTransitionEffect
    
    
    init(){
        UITabBar.appearance().unselectedItemTintColor = UIColor(myColor.myQuternaryColor.getColor)

    }
    
    
    var body: some View {
        
        ZStack(alignment: .center){
            myColor.myPrimaryColor.getColor.ignoresSafeArea()
 
            
            switch pageController.pageType {
            case .regiser:
                registerPage()
                    .transition(.move(edge: .trailing).combined(with: .opacity))
                    .matchedGeometryEffect(id: "register", in: pageTransitionEffect)
                    
            case .login:
                loginPage()
                    .transition(.move(edge: .leading).combined(with: .opacity))
                    .matchedGeometryEffect(id: "login", in: pageTransitionEffect)
            
            case .logged:
                TabView {
                    roomListView()
                        .tabItem {
                            Image(systemName: "house")
                                .foregroundColor(.red)
                        }
                    
                    
                    profileView()
                        .tabItem {
                            Image(systemName: "person")
                        }
                }
                .tint(myColor.myTertiaryColor.getColor)
             
            }
        }.environmentObject(pageController)
        
            
    }
}

struct PageControllerView_Previews: PreviewProvider {
    static var previews: some View {
        PageControllerView()
    }
}
