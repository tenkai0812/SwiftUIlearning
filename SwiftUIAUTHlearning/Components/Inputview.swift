//
//  Inputview.swift
//  SwiftUIAUTHlearning
//
//  Created by Sky Lien on 2024/4/25.
//

import SwiftUI

struct Inputview: View {
    @Binding var text: String
    let title: String
    let placeholder: String
    var isSecureField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            
            if isSecureField {
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            else{
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
                                
                                 
        }
    }
}

#Preview {
    Inputview(text: .constant(""), title: "Email Address", placeholder: "name@example.com")
}
