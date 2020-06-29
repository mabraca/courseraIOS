//
//  ViewController.swift
//  MasFeliz
//
//  Created by UbiiPagos on 6/28/20.
//  Copyright © 2020 UbiiPagos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensajePositivo: UILabel!
    let colores = Colores()
    let frases = Datos()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func dameUnMensajePositivo() {
        print("Esto sera muy positivo")
        mensajePositivo.text = frases.regresaFraseFeliz()
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio
        view.tintColor = colorAleatorio
    }
}

