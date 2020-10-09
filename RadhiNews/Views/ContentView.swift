//
//  ContentView.swift
//  RadhiNews
//
//  Created by Radhi Mighri on 16/07/2020.
//  Copyright © 2020 Radhi Mighri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        
        NavigationView{

            List(networkManager.posts) {
                post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
        .navigationBarTitle("Radhi News")
        }
        
        .onAppear { // like the ViewDidLoad
            self.networkManager.fetchData()
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//let posts =  [
//    Post(id: "1", title: "Hello"),
//    Post(id: "2", title: "Salut"),
//    Post(id: "3", title: "Hola")
//]
