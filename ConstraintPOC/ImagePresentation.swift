//
//  ImagePresentation.swift
//  ConstraintPOC
//
//  Created by Yann Christophe Maertens on 12/02/2024.
//

import Foundation

struct ImagePresentation {
    var image: String = "image"
    var description: String
}

extension ImagePresentation {
    static let data = [
        ImagePresentation(description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        ImagePresentation(description: "Contrary to popular belief, Lorem Ipsum is not simply random text.")
    ]
}
