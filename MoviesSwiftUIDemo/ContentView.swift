//
//  ContentView.swift
//  MoviesSwiftUIDemo
//
//  Created by Deniz Mersinlioğlu on 23.10.2019.
//  Copyright © 2019 DevelopmentHouse. All rights reserved.
//

import SwiftUI

struct Movie: Identifiable, Hashable {
    let id = UUID()
    let name, imageName: String
}

struct ContentView: View {
    
    let movies: [[Movie]] = [
        [Movie(name: "Deadpool 2", imageName: "movie0"),
         Movie(name: "The Shape of Water", imageName: "movie1")],
        [Movie(name: "Incredibles 2", imageName: "movie2"),
         Movie(name: "Tomb Raider", imageName: "movie3")],
        [Movie(name: "Deadpool 2", imageName: "movie0"),
         Movie(name: "The Shape of Water", imageName: "movie1")],
        [Movie(name: "Incredibles 2", imageName: "movie2"),
         Movie(name: "Tomb Raider", imageName: "movie3")]]
    
    var body: some View {
        GeometryReader{ geo in
            ScrollView{
                VStack(spacing: 48){
                    Text("Dev House Movie")
                        .font(.system(size: 20, weight: .semibold))
                    ForEach(self.movies, id: \.self){ row in
                        HStack(spacing: 16) {
                            ForEach (row) { movie in
                                MovieView(movie: movie, size: geo.size)
                            }
                        }
                    }
                    Spacer()
                }.padding(.horizontal, 16)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieView: View{
    let movie: Movie
    let size: CGSize
    
    var body: some View{
        
        VStack (spacing: 8){
            Image(movie.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: (size.width - 48)/2, height: 250)
                .clipped()
                .cornerRadius(8)
                .shadow(radius: 10)
            Text(movie.name)
                .font(.system(size: 15, weight: .bold))
            Button(action: {
                print("Button Clicked")
            }) {
                Text("Buy Tickets")
                    .foregroundColor(.white)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 4)
                    .background(Color.red)
                    .cornerRadius(8)
                    .shadow(radius: 10)
            }
        }
    }
}



