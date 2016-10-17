//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    
    var location: Coordinate
    var pizzasAvailable: Int = 10
    
    init (location: Coordinate) {
        
        self.location = location
        
    }
    
    
    func isInRange(destination: Coordinate) -> Bool {
        
        if destination.distance(to: self.location) >= 5000 {
            return true
        }else{
            return false
        
        }
        
    }
        
    

  mutating func deliverPizza(to destination: Coordinate) -> Bool {
    if isInRange(destination: destination) {
        self.pizzasAvailable = 10
        return true
    }else if pizzasAvailable == 0 {
        return false
    }
    return false
    }

    
    
}












