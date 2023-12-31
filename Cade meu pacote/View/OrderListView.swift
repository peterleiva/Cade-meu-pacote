//
//  OrderListItemView.swift
//  Cade meu pacote
//
//  Created by Peter on 31/12/23.
//

import SwiftUI

struct OrderListView: View {
  var orders: [Order]
  
    var body: some View {
      List(orders) { order in
        HStack {
          OrderListItemView(order: order)
        }
      }
    }
}

#Preview {
  OrderListView(orders: (1...10).map { Order(code: "ID \($0)", name: "description \($0 + 1)") })
}
