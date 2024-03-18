//
//  FactModel.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 18/3/24.
//

import SwiftUI

//MARK: - FACT MODEL
struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

