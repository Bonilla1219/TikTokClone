//
//  NotificationCell.swift
//  TikTokClone
//
//  Created by Javier Bonilla on 3/27/24.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack{
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                //you can use the + to concatnate texts in swiftUI and they can look different
                Text("max.verstappen")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                    
                Text(" Liked one of your posts poopy tuesday man cool. ")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
