//
//  WelcomeViewController.swift
//  unsplash
//
//  Created by Hannes Van den Berghe on 27/09/2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    private let viewModel: WelcomeViewModel = WelcomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didTapWelcomeButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Collection", bundle: nil)
        guard let initialVC = storyboard.instantiateInitialViewController() else { return }
        navigationController?.pushViewController(initialVC, animated: true)
    }
}
