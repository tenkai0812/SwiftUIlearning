//
//  Profileview.swift
//  SwiftUIAUTHlearning
//
//  Created by Sky Lien on 2024/4/26.
//

import SwiftUI

struct Profileview: View {
    var body: some View {
        List {
            Section {
                HStack {
                    Text(User.MOCK_USER.initials)
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 72, height: 72)
                        .background(Color(.systemGray3))
                        .clipShape(Circle())
                    
                    VStack (alignment: .leading, spacing: 4) {
                        Text(User.MOCK_USER.fullname)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .padding(.top, 4)
                        
                        Text(User.MOCK_USER.email)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                }
            }
            Section ("general") {
                HStack{
                    Settingrowview(imagename: "gear",
                                   title: "version",
                                   tintColor: Color(.systemGray))
                    
                    Spacer()
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                }
            Section ("account") {
                Button {
                    print("sign out..")
                } label: {
                    Settingrowview(imagename: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                }
                Button {
                    print("delete account..")
                } label: {
                    Settingrowview(imagename: "xmark.circle.fill", title: "Delete Account", tintColor: .red)
                }
                
            }
        }
    }
}

#Preview {
    Profileview()
}
