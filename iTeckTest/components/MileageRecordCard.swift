//
//  MilageCard.swift
//  iTeckTest
//
//  Created by Noor on 07/02/2024.
//

import SwiftUI
import Foundation

struct MileageRecordCard: View {
    var body: some View{
        ZStack{
            Color(.white)
            VStack(alignment: .leading){
                ImageAndTextTitle(image: "deskclock.fill", title: "Mileage", color: Color("btngreen"))
                Text("You have driven 467 Kilometers in past 28...")
                Divider()
                VStack(alignment: .leading){
                    HStack(alignment: .center){
                        Text("134")
                            .font(.system(size: 40, weight: .bold))
                        Text("Kilometers")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.gray)
                    }
                    Text("This Month")
                        .font(.system(size:25, weight: .bold))
                        .padding(20)
                        .background(Color("btngreen"))
                        .foregroundColor(Color(.white))
                        .cornerRadius(10)
                    
                    HStack(alignment: .center){
                        Text("467")
                            .font(.system(size: 40, weight: .bold))
                        Text("Kilometers")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(.gray)
                    }
                    Text("Last Month")
                        .font(.system(size:25, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(20)
                        .background(Color(.systemGray4))
                        .foregroundColor(.gray)
                        .cornerRadius(10)
                }
                .padding(EdgeInsets.init(top: 0, leading: 20, bottom: 0, trailing: 20))
            }
            .padding()
        }
    }
}

struct MileageRecordCard_Previews: PreviewProvider {
    static var previews: some View {
        MileageRecordCard()
    }
}


