//
//  ContentView.swift
//  iTeckTest
//
//  Created by Noor on 07/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("bggray")
                .ignoresSafeArea()
            ScrollView{
                VStack {
                    ZStack{
                        Image("imgmeter")
                            .resizable()
                            .scaledToFill()
                            .frame(maxWidth: .infinity)
                            .clipped()
                        VStack {
                            DaysOfWeek()
                                .padding(.top, 40)
                            Spacer()
                        }
                    }
                    VStack(spacing: 10){
                        HStack{
                            Color(.white)
                        }
                        .frame(height: 50)
                        .cornerRadius(25)
                        ZStack{
                            Color(.white)
                            HStack(){
                                Text("Track Today")
                                    .padding(5)
                                    .background(Color("btnblue"))
                                    .foregroundColor(Color(.white))
                                    .cornerRadius(25)
                                Spacer()
                                Text("Track Live")
                                    .padding(5)
                                    .background(Color("btnblue"))
                                    .foregroundColor(Color(.white))
                                    .cornerRadius(25)
                                Spacer()
                                Text("Track History")
                                    .padding(5)
                                    .background(Color("btnblue"))
                                    .foregroundColor(Color(.white))
                                    .cornerRadius(25)
                            }.padding(10)
                        }
                        .cornerRadius(25)
                        Spacer()
                        VehicleStatusCard()
                            .cornerRadius(20)
                        Spacer()
                        MileageRecordCard()
                            .cornerRadius(20)
                        Spacer()
                        MileageCard()
                            .cornerRadius(20)
                    }
                    .padding(20)
                    VStack(spacing: 10){
                        DayConsumption(title: "Yesterday", fuelProgress: 0.0, cashProgress: 0.0, kmProgress: 0.0, numberFuelProgress: "0.0", numberCashProgress: "0.0", numberKmProgress: "0.0")
                            .cornerRadius(20)
                        Spacer()
                        DayConsumption(title: "Past 7 Days", fuelProgress: 0.6, cashProgress: 0.9, kmProgress: 0.8, numberFuelProgress: "6.6", numberCashProgress: "1763.1", numberKmProgress: "79.0")
                            .cornerRadius(20)
                        Spacer()
                        StatesCard()
                            .cornerRadius(20)
                        Spacer()
                        ImageAndDiscountCard()
                            .frame(height: 200)
                            .cornerRadius(20)
                        Spacer()
                        ImageAndDiscountCard(image: "iTeck")
                            .frame(height: 200)
                            .cornerRadius(20)
                    }
                    .padding(20)
                    VStack(spacing: 10){
                        INavigateCard()
                            .cornerRadius(20)
                        HourCard()
                        Spacer()
                        RatingCard()
                            .cornerRadius(20)
                        Spacer()
                        FrequestPlacesCard()
                            .cornerRadius(20)
                        Spacer()
                        PieChartCard()
                            .cornerRadius(20)
                        Spacer()
                        HStack{
                            CustomeButton(title: "Feedback", image: "applepencil")
                                .cornerRadius(25)
                            CustomeButton(title: "Call", image: "phone.fill")
                                .cornerRadius(25)
                            CustomeButton(title: "Disclaimer", image: "list.bullet.clipboard.fill")
                                .cornerRadius(25)
                        }
                    }
                    .padding(20)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
