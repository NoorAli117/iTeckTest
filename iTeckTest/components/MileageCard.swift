//
//  MileageCard.swift
//  iTeckTest
//
//  Created by Noor on 07/02/2024.
//

import Foundation
import SwiftUI

struct MileageCard: View {
    var body: some View{
        VStack{
            HStack(spacing: 10) {
                CardView(mainText: "133.7", subText: "km", detailText: "8.4 km/day", progress: 0.7, ringColor: Color("btngreen"), iconName: "location.viewfinder", category: "Mileage")
//                    .frame(maxWidth: .infinity)
                CardView(mainText: "11.2", subText: "ltr", detailText: "0.7 ltr/day", progress: 0.7, ringColor: Color("btnblue"), iconName: "fuelpump.fill", category: "fuel burnt")
//                    .frame(maxWidth: .infinity)
                CardView(mainText: "2999.6", subText: "Rs", detailText: "187.5 Rs", progress: 0.7, ringColor: Color("btnorange"), iconName: "dollarsign.arrow.circlepath", category: "fuel cost")
//                    .frame(maxWidth: .infinity)
            }
            .padding()
        }
        .background(.white)
    }
}

struct CardView: View {
    var mainText: String
    var subText: String
    var detailText: String
    var progress: CGFloat
    var ringColor: Color
    var iconName: String
    var category: String
    
    var body: some View {
        VStack(spacing: 8) {
            ProgressRingView(progress: progress, ringColor: ringColor, iconName: iconName, mainText: mainText, subText: subText)
            VStack(alignment: .center, spacing: 20) {
                Text(detailText)
                    .font(.system(size: 14, weight: .bold))
                    .padding(.top, 4)
                
                Text("Est. \(category) per day")
                    .font(.system(size: 12))
                    .multilineTextAlignment(.center)
                    .opacity(0.5)
            }
//            .padding([.horizontal, .bottom])
        }
        .padding()
        .background(Color("bggray"))
        .cornerRadius(15)
    }
}

struct ProgressRingView: View {
    var progress: CGFloat
    var ringColor: Color
    var iconName: String
    var mainText: String
    var subText: String
    
    var body: some View {
        ZStack {
            CircleView()
            
            Circle()
                .trim(from: 0.0, to: progress)
                .stroke(ringColor, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                .rotationEffect(Angle(degrees: 270))
                .padding(8)
            
            Circle()
                .foregroundColor(.white)
                .overlay(
                    VStack{
                        Image(systemName: iconName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20)
                            .foregroundColor(ringColor)
                        
                        VStack(alignment: .center) {
                            Text(mainText)
                                .font(.system(size: 12, weight: .bold))
                                .foregroundColor(ringColor)
                            Text(subText)
                                .font(.system(size: 12))
                                .foregroundColor(ringColor)
                        }
                    }
                        .padding(2)
                )
                .shadow(color: .gray, radius: 4, x: 3, y: 5)
                .padding()
            .clipped()
        }
    }
}

struct CircleView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(.white)
            
            Circle()
                .stroke(Color.white, lineWidth: 4)
                .background(
                    Circle()
                        .foregroundColor(.white)
                        .overlay(
                            Circle()
                                .stroke(Color.white, lineWidth: 2)
                                .blur(radius: 3)
                                .opacity(0.5)
                        )
                )
                .shadow(color: .gray, radius: 4, x: 3, y: 5)
        }
    }
}


struct MileageCard_Previews: PreviewProvider {
    static var previews: some View {
        MileageCard()
    }
}
