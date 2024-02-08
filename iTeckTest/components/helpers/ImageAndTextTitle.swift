//
//  ImageAndTextTitle.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct ImageAndTextTitle: View{
    var image: String
    var title: String
    var color: Color = .black
    var body: some View{
        VStack{
            HStack{
                Image(systemName: image)
                    .foregroundColor(.red)
                Text(title)
                    .font(.system(size: 30, weight: .bold))
                    .foregroundColor(color)
                Spacer()
            }
        }
    }
}
