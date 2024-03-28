//
//  FeedView.swift
//  TikTokClone
//
//  Created by Javier Bonilla on 3/24/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(0 ..< 10) { post in
                   FeedCell(post: post)
                }
            }
            //Configures the outermost layout as a scroll target layout.
            .scrollTargetLayout()
        }
        //changes the scroll target layout behavior into paging effect
        .scrollTargetBehavior(.paging)
        //fill out entire screen
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
