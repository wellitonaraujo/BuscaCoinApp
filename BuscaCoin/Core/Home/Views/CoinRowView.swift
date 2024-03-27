//
//  CoinRowView.swift
//  BuscaCoin
//
//  Created by Welliton da Conceicao de Araujo on 26/03/24.
//

import SwiftUI

struct CoinRowView: View {
    let coin: CoinModel
    let showHoldingsColumn: Bool
    
    var body: some View {
        HStack(spacing: 0) {
            leftColumn
            
            Spacer()
            
            if showHoldingsColumn {
               centerColumn
            }

            rightColumn
            
        }
        .font(.subheadline)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CoinRowView(coin: dev.coin, showHoldingsColumn: true)
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}

extension CoinRowView {
    private var leftColumn: some View {
        HStack(spacing: 0) {
//            Text("\(coin.rank)")
//                .font(.caption)
//                .foregroundColor(Color.theme.secondaryText)
//                .frame(minWidth: 30)
            
            Circle()
                .frame(width: 30, height: 30)
            
            VStack(alignment: .leading) {
                Text(coin.name.uppercased())
                    .font(.headline)
                    .padding(.leading, 10)
                    .foregroundColor(Color.theme.accent)
                
                Text(coin.symbol.uppercased())
                    .font(.subheadline)
                    .padding(.leading, 10)
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
        .padding(.horizontal, 10)
    }
    
    private var centerColumn: some View {
        VStack {
            Text(coin.currentHoldingValue.asCurrencyWith6Decimals())
            Text((coin.currentHoldings ?? 0).asNumberString())
        }
        .foregroundColor(Color.theme.accent)
    }
    
    private var rightColumn: some View {
        VStack(alignment: .trailing){
            Text(coin.currentPrice.asCurrencyWith6Decimals())
                .bold()
                .foregroundColor(Color.theme.accent)
            
            Text(coin.priceChangePercentage24H?.asPercentString() ?? "")
                .foregroundColor(
                    (coin.priceChangePercentage24H ?? 0) >= 0 ?
                    Color.theme.green :
                    Color.theme.red
                )
        }
        .frame(width: UIScreen.main.bounds.width / 3.5, alignment: .trailing)
    }
}
