//
//  List.swift
//  Marvel Comics Pragma
//
//  Created by David Yepes Buitrago on 2/22/20.
//  Copyright © 2020 David Yepes Buitrago. All rights reserved.
//

import UIKit

class List: NSObject {

    func getCountries()-> [String] {
        var countries: [String] = []

        for code in NSLocale.isoCountryCodes  {
            let id = NSLocale.localeIdentifier(fromComponents: [NSLocale.Key.countryCode.rawValue: code])
            let name = NSLocale(localeIdentifier: "en_UK").displayName(forKey: NSLocale.Key.identifier, value: id) ?? "Country not found for code: \(code)"
            countries.append(name)
        }
        
        return countries
    }
}
