//
//  SignIn.swift
//  MoneyMonkey
//
//  Created by Ishaan virani on 11/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var savingsAcct: String = ""
    @State var tBills: String = ""
    @State var stocks: String = ""
    @State var realEstate: String = ""
    
    var user: String = "User"
    var pass: String = "password"
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
            ZStack{
                Color(.black).edgesIgnoringSafeArea(.all)
                NavigationView{
                VStack{
                    Image("MoneyMonkey_25-removebg-preview").padding(.top, 50)
                    Text("Manage Your Investments Today!")
                        .foregroundColor(Color(red: 224/255, green: 99/255, blue: 212/255))
                        .font(.system(size: 26))
                        .multilineTextAlignment(.center)
                        .padding(.top, 40)
                    Text("Sign In")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .padding(.top, 40)
                    TextField("Username", text: $username)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22).padding(.top, 20)
                    PasswordSecureField(password: $password)
                    if authenticationDidFail {
                        Text("Information not correct. Try again.").foregroundColor(.red).padding(.top, 10)
                    }
                    if authenticationDidSucceed {
                        Text("Login Successful!").foregroundColor(.green).padding(.top, 10)
                        NavigationLink(destination: Homepage(savingsAcct: $savingsAcct, realEstate: $realEstate, tBills: $tBills, stocks: $stocks), label: { Text("Click Here to Continue")})
                    }
                    Button(action: {
                        if(self.username == user && self.password == pass){
                            self.authenticationDidFail = false
                            self.authenticationDidSucceed = true
                        }
                        else{
                            self.authenticationDidFail = true
                        }
                    }) {
                    Text("Sign In")
                            .padding(13)
                            .frame(width: 250, height: 45)
                            .foregroundColor(.white)
                            .background(Color(red: 102/255, green: 98/255, blue: 227/255))
                            .cornerRadius(22)
                            .font(.system(size: 15))
                    }
                    .padding(.top, 20)
                    Button(action: {
                        print("Sign Up")
                    }) {
                    Text("Don't Have An Account? Click Here to Sign Up!")
                            .foregroundColor(.white)
                            .padding(.top, 150)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}

struct PasswordSecureField : View {
    
    @Binding var password: String
    
    var body: some View {
        return SecureField("Password", text: $password)
            .frame(width: 300, height: 45)
            .background(Color(.white))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .font(Font.system(size: 16))
            .multilineTextAlignment(.center)
            .cornerRadius(22).padding(.top, 10)
    }
}

struct Homepage : View {
    @Binding var savingsAcct: String
    @Binding var realEstate: String
    @Binding var tBills: String
    @Binding var stocks: String
    
    var body: some View {
        ZStack{
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack{
                Image("MoneyMonkey_25-removebg-preview")
                Group{
                    Text("Input Current Savings Below:")
                        .frame(width: 500, height: 45)
                        .foregroundColor(Color(.white))
                        .font(.system(size: 18))
                        .multilineTextAlignment(.leading)
                    TextField("Input Savings Amount Here", text: $savingsAcct)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22).padding(.top, 10)
                    Text("Input Current Real Estate Investment Amount \nBelow (Including Your home):")
                        .frame(width: 500, height: 45)
                        .foregroundColor(Color(.white))
                        .font(.system(size: 18))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                    TextField("Input Real Estate Investment Amount Here", text: $realEstate)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22).padding(.top, 10)
                    Text("Input Current Treasury Bonds Investment Amount \nBelow:")
                        .frame(width: 500, height: 45)
                        .foregroundColor(Color(.white))
                        .font(.system(size: 18))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                    TextField("Input Treasury Bonds Investment Amount Here", text: $tBills)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22).padding(.top, 10)
                    Text("Input Current Stock Investment Amount Below:")
                        .frame(width: 500, height: 45)
                        .foregroundColor(Color(.white))
                        .font(.system(size: 18))
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                    TextField("Input Stocks Investment Amount Here", text: $stocks)
                        .frame(width: 300, height: 45)
                        .background(Color(.white))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .font(Font.system(size: 16))
                        .multilineTextAlignment(.center)
                        .cornerRadius(22).padding(.top, 10)
                }
                let values: [Double] = [(savingsAcct as NSString).doubleValue, (realEstate as NSString).doubleValue, (tBills as NSString).doubleValue, (stocks as NSString).doubleValue]
                //var values = [Double]()
                //values.append((savingsAcct as NSString).doubleValue)
                //values.append((realEstate as NSString).doubleValue)
                //values.append((tBills as NSString).doubleValue)
                //values.append((stocks as NSString).doubleValue)
                let names: [String] = ["Savings", "Real Estate", "Treasury Bills", "Stocks"]
                NavigationLink(destination: PieChartView(values: values, names: names, formatter: {value in String(format: "$%.2f", value)}), label: { Text("Click Here to Continue")})
            }
        }
    }
}
