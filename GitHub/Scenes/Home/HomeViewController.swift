//
//  HomeViewController.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    override func loadView() { // 1# Quase nunca irei usar. a view vai estar nula e pode associar um view customizada para view atual
        print("loadView")
    }
    override func viewDidLoad() {
        print("viewDidLoad") // 2# acontece uma unica vez. Na primeira vez que vai abrir uma tela
    }
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear") // 3# Toda vez antes de abrir a tela
    }
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear") // 4# Quando abre a tela. Os componentes estaram carregados
    }
   
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear") // 5# Antes de desaparecer a tela
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear") // 6# depois que a tela sumiu
    }
}
