//
//  Stock.swift
//  BitMon
//
//  Created by serg on 30.01.2023.
//

import Foundation

struct Binance24Stock: Decodable {
    let symbol: String
    let priceChange: String
    let priceChangePercent: String
    let lastPrice: String
    let lastQty: String
    let bidPrice: String
    let bidQty: String
    let askPrice: String
    let askQty: String
    let volume: String
}
