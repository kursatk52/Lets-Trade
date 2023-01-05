//
//  myPostView.swift
//  Lets Trade
//
//  Created by Kursat Korkmaz on 5.01.2023.
//

import SwiftUI

struct myPostView: View {
    
    var postModel : PostModel
    var isMenuShow : Bool = false
    
    
    init(postModel: PostModel, isMenuShow: Bool = false) {
        self.postModel = postModel
        self.isMenuShow = isMenuShow
    }
    
    var body: some View {
        ZStack{
            VStack (alignment: .leading, spacing: 20) {
                HStack(spacing: 5) {
                    myMiniIcon(text: .constant(""), isToggle: .constant(true), size: 80)
                    Text("Kursat Korkmaz")
                        .foregroundColor(myColor.myPrimaryColor.getColor)
                        .font(.title3.bold())
                    Spacer()
                    if isMenuShow{
                        Image(systemName: "ellipsis")
                            .frame(height: 30)
                            .foregroundColor(myColor.myPrimaryColor.getColor)
                            .rotationEffect(Angle(degrees: 90))
                            .onTapGesture {
                                print("Three menu bar.")
                        }
                    }
                        
                }
                
                HStack{
                    Spacer()
                    VStack(spacing: 14){
                        Text("Ürün")
                            .foregroundColor(myColor.myPrimaryColor.getColor)
                            .font(.body.bold())
                        Text("\(postModel.product_type)")
                            .foregroundColor(myColor.myPrimaryColor.getColor)
                            .font(.body)
                    }
                    Spacer()
                    VStack(spacing: 14){
                        Text("Fiyat")
                            .foregroundColor(myColor.myPrimaryColor.getColor)
                            .font(.body.bold())
                        Text("\(String(format: "%.2f", postModel.amount)) ₺")
                            .foregroundColor(myColor.myPrimaryColor.getColor)
                            .font(.body)
                    }
                    Spacer()
                }
                
                Text("\(postModel.description)")
                    .frame(maxHeight: 120)
                    .foregroundColor(myColor.myPrimaryColor.getColor)
                    .padding(.horizontal)
                
                
                
            }
            
            
        }
        .padding()
        .background{
            Effects.shared.dropShadow {
                RoundedRectangle(cornerRadius: 20)
                    .fill(myColor.myQuternaryColor.getColor)
            }
        }
    }
}

struct myPostView_Previews: PreviewProvider {
    static var previews: some View {
        myPostView(postModel: PostModel.examples[0], isMenuShow: true)
    }
}
