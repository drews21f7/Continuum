//
//  SearchableRecord.swift
//  Continuum
//
//  Created by Drew Seeholzer on 7/11/19.
//  Copyright © 2019 Drew Seeholzer. All rights reserved.
//

import Foundation

protocol SearchableRecord {
    func matches(searchTerm: String) -> Bool
    
}
