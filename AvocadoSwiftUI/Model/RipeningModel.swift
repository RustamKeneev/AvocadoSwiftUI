//
//  RipeningModel.swift
//  AvocadoSwiftUI
//
//  Created by Rustam Keneev on 20/3/24.
//

import SwiftUI

//MARK: - RIPENING MODEL
struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

