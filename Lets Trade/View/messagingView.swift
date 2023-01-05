//
//  messagingView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 6.01.2023.
//

import SwiftUI

struct messagingView: View {
    
    @State var text : String = ""

    var body: some View {
        ZStack{
            myColor.myPrimaryColor.getColor.ignoresSafeArea()
            VStack{
                RoundedRectangle(cornerRadius: 15)
                    .fill(myColor.myQuternaryColor.getColor)
                    .overlay {
                        ScrollView(.vertical, showsIndicators: false){
                            
                            ScrollViewReader { proxy in
                                VStack{
                                    myMessageItem("Merhaba, nasılsınız?")
                                    myMessageItem("Üründe pazarlık mevcut mudur?")
                                    myMessageItem("Merhaba iyiyim teşekkür ederim.",isReceivedMessage: true)
                                    myMessageItem(isReceivedMessage: true)
                                    myMessageItem(isReceivedMessage: true)
                                    myMessageItem(isReceivedMessage: true)
                                    myMessageItem(isReceivedMessage: true)
                                    myMessageItem(isReceivedMessage: true)
                                    myMessageItem(isReceivedMessage: true)
                                        .id("1")
                                }
                                .onAppear(){
                                    proxy.scrollTo("1")
                                }
                            }
                            
                        }
                    }
                
                HStack {
                    TextField("Type message...", text: $text,axis: .vertical)
                        .multilineTextAlignment(.leading)
                        .lineLimit(4)
                        .padding()
                        .frame(minHeight: 50,maxHeight: 200)
                        .background{
                            RoundedRectangle(cornerRadius: 15)
                                .fill(myColor.myQuternaryColor.getColor)
                            
                        }
                        .fixedSize(horizontal: false, vertical: true)
                        
                    
                    Image(systemName: "arrow.up.forward.circle")
                        .resizable()
                        .frame(width: 50,height: 50)
                        .foregroundColor(myColor.myTertiaryColor.getColor)
                        .padding(.leading,5)
                        .onTapGesture {
                            print("Message sent button pressed!")
                        }
                }
            }
            .padding()
        }
    }
}

struct messagingView_Previews: PreviewProvider {
    
    
    static var previews: some View {
        
        messagingView()
    }
}
