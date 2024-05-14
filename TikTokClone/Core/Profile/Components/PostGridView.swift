//
//  PostGridView.swift
//  TikTokClone
//
//  Created by Javier Bonilla on 4/3/24.
//

import SwiftUI

struct PostGridView: View {
    //GridItem:  A description of a row or a column in a lazy grid.
    //this basically means 3 items per row
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    //width is porportionate to the screen and sub 2 to have a pixle spacing
    private let width = (UIScreen.main.bounds.width / 3) - 2
    
    var body: some View {
        //spacing here only changes spacing for rows
        LazyVGrid(columns: items, spacing: 2){
            ForEach(0..<25) { post in
                Rectangle()
                    .frame(width: width, height: 160)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView()
}
