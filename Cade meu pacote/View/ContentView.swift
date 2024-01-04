//
//  ContentView.swift
//  Cade meu pacote
//
//  Created by Peter on 31/12/23.
//

import SwiftUI

struct ContentView: View {
  var orders: [Order]
  @State private var path: [Order] = []
  
  
  var body: some View {
    VStack {
      if path.isEmpty {
        Button("first!!") {
          path = [orders.first].compactMap { $0 }
          print(path)
        }
      }
      
      NavigationStack(path: $path) {
        List(orders) { order in
          NavigationLink {
            OrderDetailView(order: order)
          } label: {
            OrderListItemView(order: order)
          }
        }
        .navigationTitle("Pedidos")
      }
    }
    }
}

#Preview {
  ContentView(orders: [
    Order(code: "ID1", name: "Moletom"),
    Order(code: "ID2", name: "Jaqueta")
  ])
}
