//
//  CashService.swift
//  HomeWork2
//
//  Created by Anna Volkova on 26.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

public protocol ICashService {
    
    func getCashData(type: CashName) -> Any?
    
    func addCashData(data: Any?, type: CashName)
}

public class CashService: ICashService {
    
    public static let shared = CashService()
    
    private init() {}
    
    private var cashedData: [String: Any] = [:]
    
    public func getCashData(type: CashName) -> Any? {
        return self.cashedData[type.rawValue]
    }
    
    public func addCashData(data: Any?, type: CashName) {
        let type = type.rawValue
        self.cashedData[type] = data
    }
}
