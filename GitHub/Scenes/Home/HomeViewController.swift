//
//  HomeViewController.swift
//  GitHub
//
//  Created by Jade Silveira on 05/06/21.
//

import Foundation
import UIKit

// nao deve ter nenhuma logica. NENHUMA. sem ifs, for, foreach, switch case

// Controladores de Acesso - Access Control
// filePrivate - acessado somente dentro do arquivo
// open - pode ser herdado e sobrescrito em qualquer lugar
// internal - pode ser acessado somente dentro do modulo
// public - pode ser acessado mas nao herdado e sobrescrito em qualquer lugar
// private - pode ser acessado somente dentro da classe
// final - não pode ser herdada

protocol HomeDisplaying {
    
}

final class HomeViewController: UIViewController {
    private let interactor: HomeInteracting
    
    init(interactor: HomeInteracting) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { nil }
    
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

extension HomeViewController: HomeDisplaying {
    
}
