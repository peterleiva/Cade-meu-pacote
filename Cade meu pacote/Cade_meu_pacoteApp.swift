//
//  Cade_meu_pacoteApp.swift
//  Cade meu pacote
//
//  Created by Peter on 31/12/23.
//

import SwiftUI

@main
struct Cade_meu_pacoteApp: App {
  @State private var orders = [Order(code: "ID1", name: "iphone 15 pro max")]

    var body: some Scene {
        WindowGroup {
          ContentView(orders: orders)
        }
    }
}
