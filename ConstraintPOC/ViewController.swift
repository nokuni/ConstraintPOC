//
//  ViewController.swift
//  ConstraintPOC
//
//  Created by Yann Christophe Maertens on 12/02/2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var imagePresentations = ImagePresentation.data
    private var currentIndex = 0
    
    @IBOutlet weak var imageDisplay: UIImageView!
    @IBOutlet weak var imageDescription: UILabel!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDisplayedContent()
    }
}

// MARK: - Values
extension ViewController {
    private var currentImagePresentation: ImagePresentation {
        let imagePresentation = ImagePresentation.data[currentIndex]
        return imagePresentation
    }
}

// MARK: - Setup
extension ViewController {
    private func setupDisplayedContent() {
        updateImagePresentation()
        setupButtons()
    }
    
    private func setupButtons() {
        nextButton.addTarget(self, action: #selector(displayNextImage), for: .touchUpInside)
        previousButton.addTarget(self, action: #selector(displayPreviousImage), for: .touchUpInside)
    }
    
    private func updateImagePresentation() {
        imageDisplay.image = UIImage(named: "\(currentImagePresentation.image)\(currentIndex)")
        imageDescription.text = currentImagePresentation.description
    }
}

// MARK: - Actions
extension ViewController {
    @objc
    private func displayNextImage() {
        guard currentIndex < (imagePresentations.count - 1) else { return }
        currentIndex += 1
        updateImagePresentation()
    }
    
    @objc
    private func displayPreviousImage() {
        guard currentIndex > 0 else { return }
        currentIndex -= 1
        updateImagePresentation()
    }
}
