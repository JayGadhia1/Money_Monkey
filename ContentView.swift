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
    
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        ZStack{
            Color(red: 22/255, green:22/255, blue: 24/255).edgesIgnoringSafeArea(.all)
            
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
                }
                Button(action: {
                    print("User is logging in")
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
                        .foregroundColor(.green)
                        .padding(.top, 150)
                }
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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