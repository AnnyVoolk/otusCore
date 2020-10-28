//
//  AppConfig.swift
//  HomeWork2
//
//  Created by Anna Volkova on 26.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

public class AppConfig {
    
    public static let shared = AppConfig()
    
    private init() {
        self.setup()
    }
    
    private func setup() {
        ServiceLocator.shared.addService(service: CashService.shared as ICashService)
        ServiceLocator.shared.addService(service: JobsApiService() as IJobsApiService)
        ServiceLocator.shared.addService(service: RecipeApiService() as IRecipeApiService)
    }
}
