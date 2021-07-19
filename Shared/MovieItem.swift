//
//  MovieItem.swift
//  trendingStyles
//
//  Created by Sanusi, Ridwan Oluwabusola on 18.07.21.
//

import SwiftUI

struct MovieItem: View {
    var movie: Movie = movies[0]
    var body: some View {
        
        VStack {
             Image(movie.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
        .edgesIgnoringSafeArea(.all)

    }
}

struct MovieItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieItem()
    }
}
