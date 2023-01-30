//
//  ViewController.swift
//  BitMon
//
//  Created by serg on 30.01.2023.
//

import UIKit

class ViewController: UIViewController {

//    private let data = DataStore.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fetchBinance() {
        
        
        guard let url = URL(string: Links.binance24stock.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, resp, error in
            guard let data = data else { return }
            let jsonDecoder = JSONDecoder()

            do {
                let binanceData = try jsonDecoder.decode([Binance24Stock].self, from: data)
                for i in 0..<binanceData.count {
                    print("\(i): \(binanceData[i])")
                }
            } catch {
                print(error)
                return
            }

        }.resume()
        
                
        
    }
    
}

