//
//  ContentView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 28.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var username : String = ""
    @State var password : String = ""
    @State var isReady : Bool = true
    var body: some View {
        VStack{
            Text("Vira Bismillah!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
