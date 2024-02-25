//
//  Song.swift
//  TableView
//
//  Created by Jasmine Sung on 25/2/2024.
//

import Foundation

struct Song {
    init(_ desc_param: String, _ artist_param: String, _ year_param: String, _ title_param: String) {
        description = desc_param
        artist = artist_param
        year = year_param
        title = title_param
    }
    var description: String
    var artist: String
    var year: String
    var title: String
}
