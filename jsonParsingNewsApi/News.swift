//
//  News.swift
//  jsonParsingNewsApi
//
//  Created by Bruna Fernanda Drago on 15/05/20.
//  Copyright © 2020 Bruna Fernanda Drago. All rights reserved.
//

import Foundation

struct NewsFeed:Codable {
    
    var status : String = ""
    var resultStatus : Int? = 0
    var articles : [Article]?
}
