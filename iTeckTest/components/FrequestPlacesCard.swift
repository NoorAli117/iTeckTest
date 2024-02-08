//
//  FrequestPlacesCard.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct FrequestPlacesCard: View {
    var body: some View{
        VStack{
            VStack(spacing: 20){
                ImageAndTextTitle(image: "map.fill", title: "Most Frequest Places")
                Spacer()
                DistanceText(title: "Royal Ice and Spice, Karachi, Sindh.", subTitle: "Visited 1 times in past 4 weeks")
                DistanceText(title: "McDonalds, Airport Road, Karachi, Sindh.", subTitle: "Visited 1 times in past 4 weeks")
                DistanceText(title: "Royal Ice and Spice, Karachi, Sindh.", subTitle: "Visited 1 times in past 4 weeks")
                DistanceText(title: "McDonalds, Airport Road,", subTitle: "Visited 1 times in past 4 weeks")
                DistanceText(title: "Bright Scope College of Business and Information Technology, Shama Center Road, Karachi, Sindh.", subTitle: "Visited 2 times in past 4 weeks")
                DistanceText(title: "S Yousuf Mobiles, Shama Center Road, Karachi, Sindh.", subTitle: "Visited 5 times in past 4 weeks")
                DistanceText(title: "Be Petrol Pump, Shahrah e Faisal, Karachi, Sindh.", subTitle: "Visited 1 times in past 4 weeks")
            }
            .padding()
        }
        .background(.white)
    }
}

struct FrequestPlacesCard_Previews: PreviewProvider {
    static var previews: some View {
        FrequestPlacesCard()
    }
}
