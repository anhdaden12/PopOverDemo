//
//  ViewController.swift
//  popOverDemo
//
//  Created by Ngoc on 7/10/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPopoverPresentationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination
        let pc = vc.popoverPresentationController
        pc?.delegate = self
        // the code below alllow popover set in the center of view
        pc?.sourceRect = CGRect(origin: view.center, size: .zero)
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }

}

