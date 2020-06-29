//
//  ViewController.swift
//  Hamburguesas
//
//  Created by UbiiPagos on 6/28/20.
//  Copyright © 2020 UbiiPagos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelHamburguesa: UILabel!
    @IBOutlet weak var labelPais: UILabel!
    @IBOutlet weak var labelPrecio: UILabel!
    
    let pais = ColeccionDePaises()
    let hamburguesa = ColeccionDeHamburguesa()
    let precio = ColeccionDePreciosHamburguesa()
    let color = Colores()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func siguienteHamburguesa() {
        labelHamburguesa.text = hamburguesa.obtenHamburguesa()
        labelPais.text = pais.obtenPais()
        labelPrecio.text = precio.obtenPrecio()
        view.backgroundColor = color.regresaColorAleatorio()
        view.tintColor = color.regresaColorAleatorio()
        
    }
    
}

