//
//  ViewController.swift
//  Signos Aula
//
//  Created by Alexandre de Oliveira Nepomuceno on 21/04/20.
//  Copyright © 2020 Alexandre de Oliveira Nepomuceno. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos : [String] = []
    var significado: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Câncer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escopião")
        signos.append("Sargitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        significado.append("Corajoso")
        significado.append("Confiável")
        significado.append("Gentil")
        significado.append("altamente criativo")
        significado.append("Criativo")
        significado.append("Fiel")
        significado.append("Cooperativo")
        significado.append("Versátil")
        significado.append("Generoso")
        significado.append("Responsável")
        significado.append("Progressivo")
        significado.append("Compassivo")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let alerta = UIAlertController(title: "Significado do Signo", message: significado[indexPath.row], preferredStyle: .alert)
        let acao = UIAlertAction(title: "OK", style: .default, handler: nil)
        alerta.addAction(acao)
        self.present(alerta , animated: true , completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "dadosCelulas", for: indexPath)
        celula.textLabel?.text = signos[indexPath.row]
        
        
        return celula
        
    }


}

