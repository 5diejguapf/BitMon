//
//  DataStore.swift
//  BitMon
//
//  Created by serg on 30.01.2023.
//

import Foundation


class DataStore {
    static let shared = DataStore()
    
    func fetchBinance(url: String) async -> [Binance24Stock] {
        print("fetch binance prices")
        // TODO: fetch data here
        var result: [Binance24Stock] = []
        guard let url = URL(string: url) else { return result }
        let urlReq = URLRequest(url: url)
        do {
            let (data, _) = try await URLSession.shared.data(for: urlReq)
            let jsonDecoder = JSONDecoder()
            result = try jsonDecoder.decode([Binance24Stock].self, from: data)
        } catch {
            print(error)
        }
        return result
            
        
            
//        let session = URLSession.shared.dataTask(with: url) { data, response, err in
//            guard let response = response else {
//                print("\(response.debugDescription)")
//                return
//            }
//            guard let data = data else {
//                print("\(response.description)")
//                return
//            }
//
//            let jsonDecoder = JSONDecoder()
//            do {
//                result = try jsonDecoder.decode([Binance24Stock].self, from: data)
//            } catch {
//                print(error.localizedDescription)
//            }
//        }.resume()
//
//        return result
    }
    
    private init() {}
}
