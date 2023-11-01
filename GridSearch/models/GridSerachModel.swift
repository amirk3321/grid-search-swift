//
//  GridSerachModel.swift
//  GridSearch
//
//  Created by MA on 01/11/2023.
//

import Foundation


struct GrdiSearchModel : Decodable {
    let feed : Feed
}

struct Feed : Decodable {
    let results : [Result]
}

struct Result : Decodable , Identifiable{
    let name,releaseDate,id,artistName,kind,artworkUrl100,url : String
}
