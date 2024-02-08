//
//  ImageAndDiscountCard.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct ImageAndDiscountCard: View {
    var image: String?
    
    var body: some View{
        VStack{
            HStack{
                if let img = image{
                    Image(img)
                        .resizable()
                }else{
                    Text("Discount will be available soon.")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
            }
        }
        .background(.white)
    }
}

struct ImageAndDiscountCard_Previews: PreviewProvider {
    static var previews: some View {
        ImageAndDiscountCard(image: "iTeck")
    }
}
