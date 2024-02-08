//
//  SpentProgressChart.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct StatesCard: View {
    let data: [String : Int] = ["Week 1" : 1763, "Week 2" : 1237, "Week 3" : 1520, "Week 4" : 1609]
    
    var body: some View {
        VStack{
            HStack(alignment: .bottom) {
                VStack{
                    HStack(alignment: .top, spacing: 10){
                        ForEach(data.sorted(by: <), id: \.key) { (key, value) in
                            VStack {
                                Text("\(value)")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(.white)
                                
                                Text("PKR")
                                    .font(.system(size: 14, weight: .medium))
                                    .foregroundColor(.white)
                            }
                            .frame(minWidth: 50)
                            .background(Color.blue)
                            .cornerRadius(5)
                        }
                    }
                    Spacer()
                    BarChartView(data: data)
                }
                Spacer()
                SummaryView(total: data.values.reduce(0, +), fuel: 22, shopping: 6130, search: 273)
            }
            .padding()
        }
        .background(.white)
    }
}

struct BarChartView: View {
    let data: [String : Int]
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom, spacing: 10) {
                ForEach(data.sorted(by: <), id: \.key) { (key, value) in
                    VStack {
                        VStack {
                            Rectangle()
                                .fill(Color.blue)
                                .frame(height: CGFloat(value/10))
                                .frame(minWidth: 50)
                                .cornerRadius(5)
                            Text(key)
                                .font(.system(size: 12, weight: .medium))
                                .lineLimit(1)
                                .frame(width: 50)
                        }
                    }
                }
            }
        }
    }
}

struct SummaryView: View {
    let total: Int
    let fuel: Int
    let shopping: Int
    let search: Int
    
    var body: some View {
        VStack(spacing: 20) { // Added vertical spacing between indicators
            // Total
            HStack {
                Text("Total")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
            }
            
            .frame(maxWidth: .infinity, minHeight: 50)
            .background(Color.yellow)
            .cornerRadius(10)
            
            // Fuel
            SummryData(image: "fuelpump.fill", data: fuel, color: "btngreen")
            
            // Shopping
            SummryData(image: "dollarsign.arrow.circlepath", data: shopping, color: "btnorange")
            
            // Search
            SummryData(image: "location.viewfinder", data: search, color: "btnblue")
        }
    }
}

struct SummryData: View {
    var image: String
    var data: Int
    var color: String
    var body: some View{
        HStack {
            Image(systemName: image)
                .foregroundColor(.white) // Changed the image color to white
            Text("\(data)")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.white)
        }
        .frame(minWidth: 100, maxWidth: .infinity, minHeight: 50)
        .background(Color(color))
        .cornerRadius(10)
    }
}


struct SpentProgressChart_Previews: PreviewProvider {
    static var previews: some View {
        StatesCard()
    }
}
