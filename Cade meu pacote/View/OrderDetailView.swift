//
//  OrderDetailView.swift
//  Cade meu pacote
//
//  Created by Peter on 31/12/23.
//

import SwiftUI

struct OrderDetailView: View {
  var order: Order
    var body: some View {
      Text("order: \(order.name)")
    }
}

#Preview {
  OrderDetailView(order: Order(code: "ID1", name: "iphone 15 pro max"))
}
