//
//  CoinModel.swift
//  BuscaCoin
//
//  Created by Welliton da Conceicao de Araujo on 26/03/24.
//


import Foundation

struct CoinModel: Identifiable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Int?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let priceChangePercentage24HInCurrency: Double?
    let currentHoldings: Double?
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice =  "current_price"
        case marketCap =  "market_cap"
        case marketCapRank =  "market_cap_rank"
        case fullyDilutedValuation =  "fully_diluted_valuation"
        case high24H =  "high_24h"
        case low24H =  "low_24h"
        case priceChange24H =  "price_change_24h"
        case priceChangePercentage24H =  "price_change_percentage_24h"
        case marketCapChange24H =  "market_cap_change24h"
        case marketCapChangePercentage24H =  "market_cap_change_percentage24h"
        case circulatingSupply =  "circulating_supply"
        case totalSupply =  "total_supply"
        case maxSupply =  "max_supply"
        case ath =  "ath"
        case athChangePercentage =  "ath_change_percentage"
        case athDate =  "ath_date"
        case lastUpdated =  "last_updated"
        case sparklineIn7D =  "sparkline_in_7d"
        case priceChangePercentage24HInCurrency =  "price_change_percentage_24h_in_currency"
        case currentHoldings
    }
    
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: id, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: ath, atlChangePercentage: athChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, priceChangePercentage24HInCurrency: priceChangePercentage24HInCurrency, currentHoldings: amount)
    }
    
    var currentHoldingValue: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 00)
    }
}


struct SparklineIn7D: Codable {
    let price: [Double]?
}
