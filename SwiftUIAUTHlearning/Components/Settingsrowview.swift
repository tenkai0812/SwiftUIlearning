//
//  Settingrowview.swift
//  SwiftUIAUTHlearning
//
//  Created by Sky Lien on 2024/4/26.
//

import SwiftUI

struct Settingrowview: View {
    let imagename: String
    let title: String
    let tintColor: Color
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: imagename)
                .imageScale(.small)
                .font(.title)
                .foregroundColor(tintColor)
            
            Text(title)
                .font(.subheadline)
                .foregroundColor(.black)
        }
    }
}

#Preview {
    Settingrowview(imagename: "gear", title: "version", tintColor: Color(.systemGray))
}
