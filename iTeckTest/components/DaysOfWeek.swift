//
//  DaysOfWeek.swift
//  iTeckTest
//
//  Created by Noor on 09/02/2024.
//

import Foundation
import SwiftUI

struct DaysOfWeek: View {
    @State private var selectedDay: Int = 0

    let daysOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]

    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<daysOfWeek.count) { index in
                Button(action: {
                    self.selectedDay = index
                }) {
                    Text(daysOfWeek[index])
                        .foregroundColor(.white)
                        .background(self.selectedDay == index ? Color.blue : Color.clear)
                        .cornerRadius(8)
                }
            }
        }
    }
}

struct DaysOfWeek_Previews: PreviewProvider {
    static var previews: some View {
        DaysOfWeek()
    }
}
