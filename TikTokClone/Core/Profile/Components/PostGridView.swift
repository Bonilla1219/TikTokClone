//
//  PostGridView.swift
//  TikTokClone
//
//  Created by Javier Bonilla on 4/3/24.
//

import SwiftUI

struct PostGridView: View {
    //GridItem:  A description of a row or a column in a lazy grid.
    private let items = [
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PostGridView()
}
