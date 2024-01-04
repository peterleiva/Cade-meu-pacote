//
//  OrderListItemView.swift
//  Cade meu pacote
//
//  Created by Peter on 31/12/23.
//
import SwiftUI

struct OrderListItemView: View {
  var order: Order
  
    var body: some View {
      HStack {
        Text(order.name)
          .fontWeight(.bold)
          .lineLimit(1)
        Spacer()
        LabelView("In progress")
      }
    }
}

#Preview {
  List {
    OrderListItemView(order: Order(code: "ID1", name: "Moletom"))
    OrderListItemView(order: Order(code: "ID1", name: "Jaqueta"))
    OrderListItemView(order: Order(code: "ID1", name: "iPhone 14 pro max 500GB preto espacial"))
    OrderListItemView(order: Order(code: "ID1", name: "Moletom"))
  }
}
