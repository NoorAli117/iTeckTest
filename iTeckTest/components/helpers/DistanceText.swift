//
//  DistanceText.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct DistanceText: View {
    var title: String
    var subTitle: String
    var body: some View{
        VStack{
            VStack(alignment: .leading){
                Text(title)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.black)
                HStack {
                    Text(subTitle.prefix(8)) // "Visited "
                        .foregroundColor(.gray)
                    
                    Text(subTitle.dropFirst(8).prefix(1)) // "1"
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(Color("btngreen"))
                    
                    Text(subTitle.dropFirst(9)) // "times in the past 4 weeks"
                        .foregroundColor(.gray)
                }
                
                Divider()

            }
        }
    }
}
