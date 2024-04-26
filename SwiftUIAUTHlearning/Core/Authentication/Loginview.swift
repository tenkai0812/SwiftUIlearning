//
//  Loginview.swift
//  SwiftUIAUTHlearning
//
//  Created by Sky Lien on 2024/4/25.
//

import SwiftUI

struct Loginview: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                //image
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 20, height: 90)
                    .padding(.vertical,32)
                //form fields
                VStack(spacing: 24){
                    Inputview(text: $email,
                              title: "Email Address",
                              placeholder: "name@example.com")
                    .autocapitalization(.none)
                    
                    Inputview(text: $password,
                              title: "password",
                              placeholder: "Enter Your Password",
                              isSecureField: true)
                    
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //signin button
                
                Button {
                    print("Log user in..")
                } 
                label: {
                    HStack{
                        Text("SIGN IN")
                            .fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                }
                .background(Color(.systemBlue))
                .cornerRadius(12)
                .padding(.top, 24)
                
                Spacer()
                
                //singup button
                NavigationLink{
                    Registrationview()
                        .navigationBarBackButtonHidden(true)
                }
                label:{
                    HStack(spacing: 3){
                        Text("Don't have a account")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    .font(.system(size: 12))
                }
            }
        }
    }
}

#Preview {
    Loginview()
}
