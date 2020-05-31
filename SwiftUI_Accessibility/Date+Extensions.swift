//
//  Date+Extensions.swift
//  SwiftUI_Accessibility
//
//  Created by mohamed  habib on 22/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import Foundation

extension Date {
  /// Nicely format dates for displaying in Text views
  var formatted: String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "HH-mm a"
    return dateFormatter.string(from: self)
  }
  
}
