//
//  CustomeButton.swift
//  iTeckTest
//
//  Created by Noor on 09/02/2024.
//

import Foundation
import SwiftUI

struct CustomeButton: View{
    var title: String
    var image: String
    var body: some View{
        ZStack{
            HStack{
                Image(systemName: image)
                    .foregroundColor(.white)
                Text(title)
                    .font(.system(size: 14, weight: .bold))
                    .foregroundColor(.gray)
            }
        }
        .frame(maxWidth: .infinity, minHeight: 50)
        .background(Color(.systemGray4))
    }
}
