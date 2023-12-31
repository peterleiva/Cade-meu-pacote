//
//  ContentView.swift
//  Cade meu pacote
//
//  Created by Peter on 31/12/23.
//

import SwiftUI

struct ContentView: View {
  var orders: [Order]
    var body: some View {
      NavigationStack {
        List(orders) { order in
          NavigationLink(order.name) {
            OrderListItemView(order: order)
          }
        }
      }
      .navigationDestination(for: Order.self) { order in
        OrderDetailView(order: order)
      }
    }
}

#Preview {
  ContentView(orders: [
    Order(code: "ID1", name: "Moletom"),
    Order(code: "ID2", name: "Jaqueta")
  ])
}
