//
//  ViewController.swift
//  LoaderAnimation
//
//  Created by Shantaram K on 11/09/20.
//  Copyright © 2020 Shantaram Kokate. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let chessborad = SKLoader()

        view.addSubview(chessborad)
        chessborad.backgroundColor = .white
        chessborad.frame = view.frame
        chessborad.center = view.center
        
    }


}

