//
//  LabelView.swift
//  Cade meu pacote
//
//  Created by Peter on 03/01/24.
//

import SwiftUI

struct LabelView: View {
  var label: String

    var body: some View {
      Text(label)
        .foregroundStyle(.white)
        .font(.caption)
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(.blue)
        .cornerRadius(20)
    }
  
  init(_ label: String) {
    self.label = label
  }
}

#Preview {
    LabelView("Label")
}
