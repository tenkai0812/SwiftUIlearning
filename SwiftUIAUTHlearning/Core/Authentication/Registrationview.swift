//
//  Registrationview.swift
//  SwiftUIAUTHlearning
//
//  Created by Sky Lien on 2024/4/26.
//

import SwiftUI

struct Registrationview: View {
    @State private var email = ""
    @State private var fullname = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack{
            //image
            Image("logo")
                .resizable()
                .scaledToFill()
                .frame(width: 20, height: 90)
                .padding(.vertical,32)
        }
        
        VStack(spacing: 24){
            Inputview(text: $email,
                      title: "Email Address",
                      placeholder: "name@example.com")
            .autocapitalization(.none)
            
            Inputview(text: $fullname,
                      title: "FullName",
                      placeholder: "Type your name here")
            
            Inputview(text: $password,
                      title: "password",
                      placeholder: "Enter Your Password",
                      isSecureField: true)
            
            Inputview(text: $confirmPassword,
                      title: "Comfirm Password",
                      placeholder: "Confirm your Password",
                      isSecureField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12)

        
        Button {
            print("Sign user up..")
        }
        label: {
            HStack{
                Text("SIGN UP")
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
        
        Button {
            dismiss()
        } label: {
            HStack(spacing: 3){
                Text("Already have an account?")
                Text("Sign in")
                    .fontWeight(.bold)
            }
            .font(.system(size: 12))
        }

    }
}

#Preview {
    Registrationview()
}
