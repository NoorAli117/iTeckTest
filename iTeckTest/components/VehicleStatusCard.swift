//
//  Card.swift
//  iTeckTest
//
//  Created by Noor on 07/02/2024.
//

import Foundation
import SwiftUI

struct VehicleStatusCard: View{
    var body: some View{
        VStack{
            ZStack{
                Color("bgblack")
                HStack{
                    HStack {
                        Image(systemName: "car.circle")
                            .foregroundColor(Color.red)
                            .frame(width: 50)
                    }
                    VStack(alignment: .leading){
                        Text("Ignition off (Stopped) - 0 km/h")
                            .foregroundColor(.white)
                        Text("Last Reported Location: 0 km away from S Yousuf Mobiles. Shama Center Road, Karachi, Sindh.")
                            .foregroundColor(.white)
                            .lineLimit(nil) // Allow multiple lines
                            .fixedSize(horizontal: false, vertical: true)
                        Spacer()
                    }
                    .padding()
                    HStack{
                        Image(systemName: "arrow.triangle.turn.up.right.diamond")
                            .foregroundColor(.white)
                            .frame(width: 50)
                    }
                }
//                .padding(10)
            }
            Spacer()
            VStack(alignment: .leading){
                Text("Since 12 AM")
                    .foregroundColor(Color("hadcolor"))
                    .font(.headline)
                ProgressBarView(title1: "Mileage", title2: "0.0 KM", progress: 0.0)
                ProgressBarView(title1: "Amount", title2: "0.0 KM", progress: 0.0)
                ProgressBarView(title1: "Fuel", title2: "0.0 KM", progress: 0.0)
            }
            .padding(10)
            Spacer()
        }
        .background(.white)
    }
}

struct ProgressBarView: View {
    var title1: String
    var title2: String
    var progress: CGFloat
    
    var body: some View {
        HStack(spacing: 10) {
            Text(title1)
                .foregroundColor(.primary)
                .font(.headline)
                .frame(width: 70)
            
            Spacer()
            
            ProgressBar(progress: progress)
            
            Spacer()
            
            Text(title2)
                .foregroundColor(.primary)
                .font(.headline)
        }
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}
struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .foregroundColor(Color.gray.opacity(0.3))
                    .frame(width: geometry.size.width, height: 20)
//                    .cornerRadius(10)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: progress * geometry.size.width, height: 20) // Change this value for progress
//                    .cornerRadius(10)
            }
        }
        .frame(height: 20)
    }
}


struct VehicleStatusCard_Previews: PreviewProvider {
    static var previews: some View {
//        Text("Hello, world!")
        VehicleStatusCard()
    }
}
