//
//  INavigateCard.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct INavigateCard: View {
    var body: some View{
        VStack {
            ImageAndTextTitle(image: "location.fill", title: "Navigate")
            HStack(alignment: .top, spacing: 20) {
                ImageComponent(image: "parking", title: "Parking")
                ImageComponent(image: "parking", title: "Gas")
                ImageComponent(image: "parking", title: "Restaurant")
            }
            
            HStack(alignment: .top, spacing: 20) {
                ImageComponent(image: "parking", title: "Bank")
                ImageComponent(image: "parking", title: "Hospital")
                ImageComponent(image: "parking", title: "Car Maintenance")
            }
        }
        .padding()
        .background(.white)
    }
}
struct ImageComponent: View {
    var image: String
    var title: String
    
    var body: some View {
        VStack(spacing: 5) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(width: 100, height: 70)
            
            Text(title)
//                .frame(width: 100)
                .font(.system(size: 20, weight: .medium))
                .multilineTextAlignment(.center)
                .lineLimit(2)
            
        }
        .padding()
    }
}

struct INavigateCard_Previews: PreviewProvider {
    static var previews: some View {
        INavigateCard()
    }
}

