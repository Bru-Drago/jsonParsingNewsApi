//
//  Article.swift
//  jsonParsingNewsApi
//
//  Created by Bruna Fernanda Drago on 15/05/20.
//  Copyright © 2020 Bruna Fernanda Drago. All rights reserved.
//

import Foundation

struct Article : Codable{
    
    var author:String?
    var title:String?
    var description:String?
    var url:String?
    var urlToImage:String?
    var publishedAt:String?
    var content:String?
}
