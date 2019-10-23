//
//  BuyTicketsView.swift
//  MoviesSwiftUIDemo
//
//  Created by Deniz Mersinlioğlu on 23.10.2019.
//  Copyright © 2019 DevelopmentHouse. All rights reserved.
//

import SwiftUI

struct BuyTicketsView: View {
    let movie = Movie(name: "The Shape of Water", imageName: "movie1")
    
    var body: some View{
        GeometryReader{ geo in
            VStack{
                HStack{
                    Image("movie1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 200)
                        .cornerRadius(12)
                        .shadow(radius: 10)
                    VStack (alignment: .leading, spacing: 8){
                        Text("The Shape of Water")
                            .font(.system(size: 18, weight: .bold))
                        Text("Drama | Fantasy")
                        HStack{
                            Button(action: {
                                
                            }, label: {
                                Text("Mar 10 Friday")
                                    .font(.system(size: 16))
                                    .padding(.horizontal)
                                    .padding(.vertical, 8)
                                    .border(Color.black)
                                    .foregroundColor(.black)
                            })
                        }
                    }
                }
                Text("MAR")
                Spacer()
            }
            
        }
    }
    
}

struct BuyTicketsPreview: PreviewProvider{
    static var previews: some View{
        BuyTicketsView()
    }
}
