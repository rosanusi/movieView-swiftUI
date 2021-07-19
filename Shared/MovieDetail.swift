//
//  MovieDetail.swift
//  trendingStyles
//
//  Created by Sanusi, Ridwan Oluwabusola on 18.07.21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: Movie = movies[0]
    var namespace: Namespace.ID
    
    var body: some View {
        VStack {
            ScrollView {

                ZStack {
                        MovieItem(movie: movie)
                            .matchedGeometryEffect(id: movie.id, in: namespace)
                            .padding(.horizontal, 56)
                            .padding(.vertical, 96)
                        VStack(alignment: .center) {
                            Spacer()
                            HStack {
                                Text(movie.score)
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                                    .tracking(1)
                                + Text("/")
                                    .font(.system(size: 18, weight: .regular))
                                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.5))
                                    .tracking(1)
                                + Text("10")
                                    .font(.system(size: 18, weight: .bold))
                                    .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)).opacity(0.5))
                                    .tracking(2)
                            }
                            .offset(y: -60)
                        }
                    
                    VStack{
                            
                            Rectangle()
                                .frame(width: 60, height: 5)
                                .cornerRadius(8)
                                .opacity(0.1)
                                .padding(.vertical, 8)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                
                                Text("Synopsis")
                                    .font(.system(size: 14, weight: .bold))
                                    .lineSpacing(4)
                                    .foregroundColor(Color(#colorLiteral(red: 0.4156862745, green: 0.4156862745, blue: 0.4156862745, alpha: 1)))
                                
                                Text(movie.subtitle)
                                    .font(.system(size: 14, weight: .regular))
                                    .lineSpacing(4)
                                    .foregroundColor(Color(#colorLiteral(red: 0.4156862745, green: 0.4156862745, blue: 0.4156862745, alpha: 1)))
                            }
                        
                        
                        
                        HStack {
                            
                            Button("Add to watchlist"){
                                
                            }
                            .font(.system(size: 16, weight: .bold))
                            .padding(.horizontal, 24)
                            .padding(.vertical, 16)
                            .background(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .cornerRadius(64)
                            
                            Button("Watched"){
                                
                            }
                            .font(.system(size: 16, weight: .bold))
                            .padding(.horizontal, 24)
                            .padding(.vertical, 16)
                            .background(Color(#colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9529411765, alpha: 1)))
                            .foregroundColor(Color(#colorLiteral(red: 0.2901960784, green: 0.2901960784, blue: 0.2901960784, alpha: 1)))
                            .cornerRadius(64)
                        }
                        .padding(.vertical, 16)
                        
                            Spacer()
                        }
                        .padding(.horizontal, 24)
                        .frame(maxWidth: .infinity)
                        .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .cornerRadius(12)
                        .offset(x: 0, y: 600)
                }
            }
            
        }
        .matchedGeometryEffect(id: "container\(movie.id)", in: namespace)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    
    @Namespace static var namespace
    
    static var previews: some View {
        MovieDetail(namespace: namespace)
    }
}
