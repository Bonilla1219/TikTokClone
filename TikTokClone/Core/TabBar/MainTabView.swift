//
//  MainTabView.swift
//  TikTokClone
//
//  Created by Javier Bonilla on 3/24/24.
//

import SwiftUI

struct MainTabView: View {
    //SelectedTab used to keep track of the selected tab
    @State private var selectedTab = 0
    var body: some View {
        //TabView switches between multiple child views
        TabView(selection: $selectedTab){
            FeedView()
                .tabItem {
                    VStack{
                        //if the selectedTab is 0 then have the house filled in otherwise no fill
                        Image(systemName: selectedTab == 0 ? "house.fill" : "house")
                            //we need this environment properties to have the fill no fill logic work (this is only with the systemName images)
                            .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                        Text("Home")
                    }
                }
                //when this view appears we set the selectedTab to 0
                .onAppear{selectedTab = 0}
                .tag(0)
            
            ExploreView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 1 ? "person.2.fill" : "person.2")
                            .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                        Text("Friends")
                    }
                }
                .onAppear{selectedTab = 1}
                .tag(1)
            
            Text("Upload Post")
                .tabItem {Image(systemName: "plus")}
            
            NotificationsView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 3 ? "heart.fill" : "heart")
                            .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                        Text("Notifications")
                    }
                }
                .onAppear{selectedTab = 3}
                .tag(3)
            
            CurrentUserProfileView()
                .tabItem {
                    VStack{
                        Image(systemName: selectedTab == 4 ? "person.fill" : "person")
                            .environment(\.symbolVariants, selectedTab == 4 ? .fill : .none)
                        Text("Profile")
                    }
                }
                .onAppear{selectedTab = 4}
                .tag(4)
        }
        //this changes the color of the tabView to black
        .tint(.black)
    }
}

#Preview {
    MainTabView()
}
