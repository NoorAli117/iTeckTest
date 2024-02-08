//
//  HourCard.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct HourCard: View {
    var body: some View{
        HStack {
            Card(image: "hourglass.badge.plus", title: "Personal Hrs", hours: "10")
            Card(image: "hourglass.badge.plus", title: "Business Hrs", hours: "0")
        }
    }
}

struct Card: View {
    var image: String
    var title: String
    var hours: String
    var body: some View{
        VStack {
            ImageAndTextTitle(image: image, title: title)
            Text("(Past 4 Weeks)")
                .foregroundColor(.gray)
            HStack{
                Text(hours)
                    .font(.system(size: 25, weight: .bold))
                    .foregroundColor(.black)
                Text("hrs")
                    .foregroundColor(.gray)
            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(20) // Added corner radius for a rounded appearance
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
    }
}

struct HourCard_Previews: PreviewProvider {
    static var previews: some View {
        HourCard()
    }
}

