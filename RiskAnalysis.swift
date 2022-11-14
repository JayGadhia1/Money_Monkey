//
//  Risk Analysis.swift
//  MoneyMonkey
//
//  Created by Ishaan virani on 11/13/22.
//

import SwiftUI

struct RiskAnalysis: View {
    var percents: [Double]
    var lowRisk = false
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack{
                if(percents[0] < 20 || percents[1] > 40 || percents[2] == 0 || percents[3] > 10){
                    Image("high-risk_25_1_50")
                    if(percents[0] < 20){
                        Text("Be Careful! A good rule of thumb is to have at least 20% of your networth in your savings account as the risk is very low compared to other alternatives.")
                            .frame(width: 400, height: 100)
                            .foregroundColor(Color(.white))
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                            .padding(.top, 10)
                    }
                    if(percents[1] > 40){
                        Text("Watch Out! The housing market is volatile, so keeping over 40% of your investment is very risky as it is low-cash liquidity.")
                            .frame(width: 400, height: 100)
                            .foregroundColor(Color(.white))
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                            .padding(.top, 10)
                    }
                    if(percents[2] == 0){
                        Text("It seems as though you do not have any investments in treasury bonds. We suggest you look into it because treasury bonds are low-risk as they are backed by the U.S. Government.")
                            .frame(width: 400, height: 100)
                            .foregroundColor(Color(.white))
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                            .padding(.top, 10)
                    }
                    if(percents[3] > 10){
                        Text("Stocks are very volatile and high-risk. We suggest you have around 10% of your networth invested in stocks in addition to a diverse stock portfolio.")
                            .frame(width: 400, height: 100)
                            .foregroundColor(Color(.white))
                            .font(.system(size: 18))
                            .multilineTextAlignment(.leading)
                            .padding(.top, 10)
                    }
                }
                else{
                    Text("Congrats! You are Low-Risk")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .padding(.top, 40)
                    Image("low-risk_80")
                }
            }
        }
    }
}
