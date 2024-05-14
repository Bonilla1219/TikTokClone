//
//  FeedView.swift
//  TikTokClone
//
//  Created by Javier Bonilla on 3/24/24.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    //using scroll position to keep track of where we are in scroll view
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing:0){
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear{
                            playInitialVideoIfNecessary()
                            player.play()
                        }
                }
            }
            //Configures the outermost layout as a scroll target layout.
            .scrollTargetLayout()
        }
        //.onAppear{player.play()}
        //scrollPostion gives us the ability to manage where we are
        .scrollPosition(id: $scrollPosition)
        //changes the scroll target layout behavior into paging effect
        .scrollTargetBehavior(.paging)
        //fill out entire screen
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { oldValue, newValue in
            playVideoOnChangeOfScrollPostion(postID: newValue)
        }
    }
    
    func playInitialVideoIfNecessary(){
        guard 
            scrollPosition == nil,
            let post = viewModel.posts.first,
            player.currentItem == nil else {return}
        
        let item = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: item)
    }
    
    func playVideoOnChangeOfScrollPostion(postID: String?){
        //this is used to find the video for the current post we are looking at 
        guard let currentPost = viewModel.posts.first(where: {$0.id == postID}) else {return}
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
