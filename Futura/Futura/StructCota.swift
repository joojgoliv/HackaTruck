//
//  StructCota.swift
//  stockAPI
//
//  Created by Student06 on 21/08/23.
//

import Foundation

struct List : Decodable {
    let indexes : [Index]
    let stocks : [Stock]
}

struct Index : Codable, Hashable {
    let stock : String?
    let name : String?
}

struct Stock : Codable, Hashable {
    let stock : String?
    let name : String?
    let close : Double?
    let change : Double?
    let volume : Double?
    let market_cap : Double?
    let logo : String?
    let sector : String?
}
