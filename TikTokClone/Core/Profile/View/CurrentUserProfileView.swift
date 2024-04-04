//
//  CurrentUserProfileView.swift
//  TikTokClone
//
//  Created by Javier Bonilla on 4/3/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(spacing: 2){
                    // profile header view
                    ProfileHeaderView()
                    
                    // post grid view
                }
            }
        }
        
    }
}

#Preview {
    CurrentUserProfileView()
}
