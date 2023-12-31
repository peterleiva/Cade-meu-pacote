//
//  Order.swift
//  Cade meu pacote
//
//  Created by Peter on 31/12/23.
//

import Foundation

struct Order: Identifiable, Hashable {
  let code: String
  var name: String
  
  var id: String {
    code
  }
  
  
  struct Location {
    var name: String
    // map name
  }
  
}
