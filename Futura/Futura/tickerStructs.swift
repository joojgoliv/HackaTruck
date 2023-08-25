//
//  tickerStructs.swift
//  stockAPI
//
//  Created by Student06 on 21/08/23.
//

import Foundation
struct Recebido : Decodable, Hashable{
    let results : [Result]?
    let requestedAt : String?
    let took : String?
}
struct Result : Decodable, Hashable {
    let symbol : String?
    let currency : String?
    let twoHundredDayAverage : Double?
    let twoHundredDayAverageChange : Double?
    let twoHundredDayAverageChangePercent : Double?
    let marketCap : Double?
    let shortName : String?
    let longName : String?
    let regularMarketChange : Double?
    let regularMarketChancePercent : Double?
    let regularMarketTime : String?
    let regularMarketPrice : Double?
    let regularMarketDayHigh : Double?
    let regularMarketDayRange : String?
    let regularMarketDayLow : Double?
    let regularMarketVolume : Double?
    let regularMarketPreviousClose : Double?
    let regularMarketOpen : Double?
    let averageDailyVolume3Month : Double?
    let averageDailyVolume10Day : Double?
    let fiftyTwoWeekLowChange : Double?
    let fiftyTwoWeekLowChangePercent : Double?
    let fiftyTwoWeekRange : String?
    let fiftyTwoWeekHighChange : Double?
    let fiftyTwoWeekHighChangePercent : Double?
    let fiftyTwoWeekLow : Double?
    let fiftyTwoWeekHigh : Double?
    let priceEarnings : Double?
    let earningsPerShare : Double?
    let logourl : String?
    let updatedAt : String?
    let historicalDataPrice : [dataPrice]?
//    var validRanges : [String] = [
//        "1d",
//        "5d",
//        "1mo",
//        "3mo",
//        "6mo",
//        "1y",
//        "2y",
//        "5y",
//        "10y",
//        "ytd",
//        "max"
//      ]
//    var validIntervals : [String] = [
//        "1m",
//        "2m",
//        "5m",
//        "15m",
//        "30m",
//        "60m",
//        "90m",
//        "1h",
//        "1d",
//        "5d",
//        "1wk",
//        "1mo",
//        "3mo"
//      ]
    let dividendsData : dataDividend?
}

struct dataPrice : Decodable, Hashable {
    let date : Double?
    let open : Double?
    let high : Double?
    let low : Double?
    let close : Double?
    let volume : Double?
    let adjustedClose : Double?
}

struct dataDividend : Decodable, Hashable {
    let cashDividends : [cashDividend]?
    let stockDividends : [stockDividend]?
    let subscription : [subs]?
}

struct cashDividend : Decodable, Hashable {
    let assetIssued : String?
    let paymentDate : String?
    let rate : Double?
    let relatedTo: String?
    let approvedOn : String?
    let isinCode : String?
    let label : String?
    let lastDatePrior : String?
    let remarks : String?
}

struct stockDividend : Decodable, Hashable {
    let assetIssued : String?
    let factor : Double?
    let approvedOn : String?
    let isinCode : String?
    let label : String?
    let lastDatePrior : String?
    let remarks : String?
}

struct subs : Decodable, Hashable {
    let assetIssued : String?
    let percentage : Double?
    let priceUnit : Double?
    let tradingPeriod : String?
    let subscriptionDate : String?
    let approvedOn : String?
    let isinCode : String?
    let label : String?
    let lastDatePrior : String?
    let remarks : String?
}
