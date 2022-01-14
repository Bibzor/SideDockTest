//
//  ViewController.swift
//  SideDockComponent
//
//  Created by Sébastien VIDAL on 12/01/2022.
//

import UIKit
import IBAnimatable

class ViewController: UIViewController {

    @IBOutlet weak var commandButton: AnimatableButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        commandButton.showsMenuAsPrimaryAction = true
        commandButton.menu = commandMenuItem()
    }


    func commandMenuItem() -> UIMenu {
        return UIMenu(title: "Side Dock Menu", children: [
            UIAction(title: "Copy", image: UIImage(systemName: "doc.on.doc")) { action in
                print("Copy initiated")
            },
            UIAction(title: "Rename", image: UIImage(systemName: "pencil")) { action in
                print("Rename initiated")
            },
        ])
    }
}
