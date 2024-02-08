//
//  RatingCard.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct RatingCard: View {
    let rating: Double = 3.0
    let maxRating: Int = 5
    var body: some View{
        HStack{
            VStack {
                ImageAndTextTitle(image: "figure.stand", title: "Driver Score")
                Divider()
                HStack{
                    HStack {
                        ForEach(1...maxRating, id: \.self) { index in
                            Image(systemName: index <= Int(rating) ? "star.fill" : "star")
                                .foregroundColor(.yellow)
                        }
                    }
                    Spacer()
                    Text("63")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.black)
                    Text("%")
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
        .background(.white)
    }
}

struct RatingCard_Previews: PreviewProvider {
    static var previews: some View {
        RatingCard()
    }
}
