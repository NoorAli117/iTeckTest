//
//  PieChartCard.swift
//  iTeckTest
//
//  Created by Noor on 08/02/2024.
//

import Foundation
import SwiftUI

struct PieChartCard: View {
    let data: [Double] = [
        (4.5),
        (4.5),
        (4.5),
        (4.4),
        (6.8),
        (75.2),
    ]
    @State private var favoriteColor = 0
    var body: some View {
        VStack{
            HStack{
                Text("Average User")
                    .font(.system(size: 20, weight: .medium))
                Picker("What is your favorite color?", selection: $favoriteColor) {
                                Text("Amount").tag(0)
                                Text("Fuel").tag(1)
                                Text("Mileage").tag(2)
                            }
                            .pickerStyle(.segmented)
                
            }
            Divider()
            Spacer()
            ZStack{
                PieChartView(slices: data)
                VStack{
                    Text("You belong to")
                        .font(.system(size: 30, weight: .medium))
                    Text("4.4%")
                        .font(.system(size: 30, weight: .medium))
                }
            }
            Spacer()
        }
        .padding()
        .background(.white)
    }

}
struct PieChartView: View {
    @State var slices: [(Double)]
    var body: some View {
        Canvas { context, size in
            // Add these lines to display as Donut
            //Start Donut
            let donut = Path { p in
                p.addEllipse(in: CGRect(origin: .zero, size: size))
                p.addEllipse(in: CGRect(x: size.width * 0.20, y: size.height * 0.20, width: size.width * 0.6, height: size.height * 0.6))
            }
            context.clip(to: donut, style: .init(eoFill: true))
            //End Donut
            let total = slices.reduce(0) { $0 + $1 }
            context.translateBy(x: size.width * 0.5, y: size.height * 0.5)
            var pieContext = context
            pieContext.rotate(by: .degrees(-90))
            let radius = min(size.width, size.height) * 0.48
            let gapSize = Angle(degrees: 5) // size of the gap between slices in degrees
            
            var startAngle = Angle.zero
            for (value) in slices {
                let angle = Angle(degrees: 360 * (value / total))
                let endAngle = startAngle + angle
                let path = Path { p in
                    p.move(to: .zero)
                    p.addArc(center: .zero, radius: radius, startAngle: startAngle + Angle(degrees: 5) / 2, endAngle: endAngle, clockwise: false)
                    p.closeSubpath()
                }
                pieContext.fill(path, with: .color(Color("piegreen")))
                startAngle = endAngle
            }
        }
        .aspectRatio(1, contentMode: .fit)
    }

}


struct PieChartCard_Previews: PreviewProvider {
    static var previews: some View {
        PieChartCard()
    }
}
