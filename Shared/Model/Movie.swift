//
//  movie.swift
//  trendingStyles
//
//  Created by Sanusi, Ridwan Oluwabusola on 18.07.21.
//

import SwiftUI

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var subtitle: String
    var image: String
    var score: String
}

var movies = [
    Movie(
        title: "Judas and the black messiah",
        subtitle: "Offered a plea deal by the FBI, William O'Neal infiltrates the Illinois chapter of the Black Panther Party to gather intelligence on Chairman Fred Hampton.",
        image: "movie-image1",
        score: "7.5"
    ),
    Movie(
        title: "Mank",
        subtitle: "1930's Hollywood is reevaluated through the eyes of scathing social critic and alcoholic screenwriter Herman J. Mankiewicz as he races to finish the screenplay of Citizen Kane (1941).",
        image: "movie-image2",
        score: "6.9"
    ),
    Movie(
        title: "Ma Rainey's Black Bottom",
        subtitle: "Tensions rise when trailblazing blues singer Ma Rainey and her band gather at a recording studio in Chicago in 1927.",
        image: "movie-image3",
        score: "7.0"
    ),
    Movie(
        title: "Crisis",
        subtitle: "Set against the backdrop of the opioid epidemic, stories of an undercover cop, a professor, and a grieving mother collide in this dramatic thriller from writer/director Nicholas Jarecki.",
        image: "movie-image4",
        score: "6.1"
    ),
    Movie(
        title: "Nomadland",
        subtitle: "A woman in her sixties, after losing everything in the Great Recession, embarks on a journey through the American West, living as a van-dwelling modern-day nomad.",
        image: "movie-image5",
        score: "7.4"
    ),
    Movie(
        title: "The Father",
        subtitle: "A man refuses all assistance from his daughter as he ages. As he tries to make sense of his changing circumstances, he begins to doubt his loved ones, his own mind and even the fabric of his reality.",
        image: "movie-image6",
        score: "8.3"
    ),
    Movie(
        title: "The Mauritanian",
        subtitle: "Mohamedou Ould Slahi fights for freedom after being detained and imprisoned without charge by the U.S. Government for years.",
        image: "movie-image7",
        score: "7.4"
    ),
    Movie(
        title: "Another Round",
        subtitle: "Four high school teachers consume alcohol on a daily basis to see how it affects their social and professional lives.",
        image: "movie-image8",
        score: "7.8"
    ),
]
