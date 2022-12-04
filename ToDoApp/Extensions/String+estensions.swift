//
//  String.swift
//  ToDoApp
//
//  Created by Ігор Ляхович on 04.12.2022.
//

import Foundation

extension String {
    var percentEncoded: String {
        let allowedCharacters = CharacterSet(charactersIn: "~!@#$%^&*()-+=[]\\}{,./?><").inverted
        guard let encodedString = self.addingPercentEncoding(withAllowedCharacters: allowedCharacters) else { fatalError() }
        return encodedString
    }
}
