//
//  DayConsumption.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct DayConsumption: View {
    var title: String
    var fuelProgress: CGFloat
    var cashProgress: CGFloat
    var kmProgress: CGFloat
    var numberFuelProgress: String
    var numberCashProgress: String
    var numberKmProgress: String
    var body: some View{
        VStack{
            VStack{
                ImageAndTextTitle(image: "chart.pie.fill", title: title)
                HStack{
                    ProgressCircle(ringColor: Color("btnblue"), progress: fuelProgress, iconName: "fuelpump", numberProgress: numberFuelProgress, unit: "ltr")
                    ProgressCircle(ringColor: Color("btnorange"), progress: cashProgress, iconName: "dollarsign.arrow.circlepath", numberProgress: numberCashProgress, unit: "Rs")
                    ProgressCircle(ringColor: Color("btngreen"), progress: kmProgress, iconName: "location.viewfinder", numberProgress: numberKmProgress, unit: "km")
                }
            }
            .padding()
        }
        .background(.white)
    }
}

struct ProgressCircle: View {
    var ringColor: Color
    var progress: CGFloat
    var iconName: String
    var numberProgress: String
    var unit: String

    var body: some View {
        VStack{
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.3), lineWidth: 10)
                    .frame(width: 100, height: 100)
                
                Circle()
                    .trim(from: 0, to: progress)
                    .stroke(ringColor, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                    .rotationEffect(Angle(degrees: 270))
                    .padding(8)
                    .overlay(
                        Image(systemName: iconName)
                            .foregroundColor(ringColor)
                    )
            }
            HStack{
                Text(numberProgress)
                    .font(.system(size: 14, weight: .bold))
                Text(unit)
                    .font(.system(size: 14, weight: .medium))
                    .foregroundColor(.gray)
            }
        }
    }
}

struct DayConsumption_Previews: PreviewProvider {
    static var previews: some View {
        DayConsumption(title: "Yesterday", fuelProgress: 0.0, cashProgress: 0.0, kmProgress: 0.0, numberFuelProgress: "0.0", numberCashProgress: "0.0", numberKmProgress: "0.0")
    }
}
