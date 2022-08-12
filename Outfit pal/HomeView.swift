//
//  HomeView.swift
//  Outfit pal
//
//  Created by Oscar Gonzalez Strozzi on 12/8/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab){
            HomeTab()
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            SearchTab()
                .tabItem{
                   Image(systemName: "magnifyingglass")
                }.tag(1)
            FavTab()
                .tabItem{
                   Image(systemName: "heart.fill")
                }.tag(2)
            ProfileTab()
                .tabItem{
                   Image(systemName: "person.fill")
                }.tag(3)

        }
    
        .accentColor(.primary)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            
    }
}

struct HomeTab: View {
    @State var showingPopup = false
    var body: some View {
        VStack {
            HStack{
                Text("Home")
                    .padding(.leading,20)
                    .font(.system(size: 30,weight: .bold))
                Spacer()
                Button(action:{
                    showingPopup = true
                }){
                    Image(systemName: "plus")
                        .font(.system(size: 25))
                        .padding(.trailing,20)
                    
                }
                .popover(isPresented: $showingPopup,attachmentAnchor: .point(.bottom),arrowEdge: .bottom){
                    VStack{
                        Text("Add to wardrobe")
                            .font(.system(size: 30,weight: .bold))
                            .padding(.top,25)
                            .foregroundColor(.black)
                        
                        Spacer()
                        Button(action:{
                        
                        }){
                            Text("Add new garment")
                                .font(.system(size: 20))
                                .foregroundColor(.primary)
                        }
                        .frame(width: 300, height: 200, alignment: .center)
                         .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("BackgroundColor"))
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            )
                        .padding()
                        
                        Button(action:{
                            
                        }){
                            Text("Add new outfit")
                                .font(.system(size: 20))
                                .foregroundColor(.primary)
                        }
                        .frame(width: 300, height: 200, alignment: .center)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color("BackgroundColor"))
                                .shadow(color: .gray, radius: 3, x: 5, y: 5)
                            )
                        .padding()
                        
                        Spacer()
                        Spacer()
                        Button(action:{
                            showingPopup = false
                        }){
                            Text("Cancel")
                                .font(.system(size: 23,weight: .bold))
                        }
                        .padding()
                            
                        
                    }
                    
                }
            }
                    ScrollView{
                VStack{
                    Image("default")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 135)
                        .border(Color.black)
                        .clipped()
                        .shadow(color: Color("boxShadow"), radius: 2, x: 7, y: 9)
                        .padding(10)
                    Image("default")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 135)
                        .border(Color.black)
                        .clipped()
                        .shadow(color: Color("boxShadow"), radius: 2, x: 7, y: 9)
                        .padding(10)
                    Image("default")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 135)
                        .border(Color.black)
                        .clipped()
                        .shadow(color: Color("boxShadow"), radius: 2, x: 7, y: 9)
                        .padding(10)
                    Image("default")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 135)
                        .border(Color.black)
                        .clipped()
                        .shadow(color: Color("boxShadow"), radius: 2, x: 7, y: 9)
                        .padding(10)
                    Image("default")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 135)
                        .border(Color.black)
                        .clipped()
                        .shadow(color: Color("boxShadow"), radius: 2, x: 7, y: 9)
                        .padding(10)
                    Image("default")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 135)
                        .border(Color.black)
                        .clipped()
                        .shadow(color: Color("boxShadow"), radius: 2, x: 7, y: 9)
                        .padding(10)
                }
                .padding(.top, 20)
                .padding(.leading,10)
                .padding(.trailing,10)
            }
        }
        .background(Color("BackgroundColor"))


        
    }
}

struct SearchTab: View {
    var body: some View {
        ZStack{
            
        }
    }
}

struct FavTab: View {
    var body: some View {
        ZStack{
            
        }
    }
}

struct ProfileTab: View {
    var body: some View {
        ZStack{
            
        }
    }
}
