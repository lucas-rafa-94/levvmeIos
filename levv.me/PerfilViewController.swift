//
//  PerfilViewController.swift
//  levv.me
//
//  Created by Lucas dos Santos on 3/19/18.
//  Copyright © 2018 Lucas dos Santos. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var listPerfilConfig: [PerfilConfig] = []
    
    @IBOutlet weak var imgFoto: UIImageView!
    @IBOutlet weak var listPerfil: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.listPerfil.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.listPerfil.dataSource = self
        
        imgFoto.layer.cornerRadius = 40
        imgFoto.clipsToBounds = true
        
        listPerfil.tableFooterView = UIView()
        
        var perfilConfig : PerfilConfig
        perfilConfig = PerfilConfig(titulo: "Configurações", imagem: #imageLiteral(resourceName: "config"))
        
        listPerfilConfig.append(perfilConfig)
        
        perfilConfig = PerfilConfig(titulo: "Pagamentos", imagem: #imageLiteral(resourceName: "pagamento"))
        listPerfilConfig.append(perfilConfig)
        
        perfilConfig = PerfilConfig(titulo: "Créditos e Cupons", imagem: #imageLiteral(resourceName: "cupons"))
        listPerfilConfig.append(perfilConfig)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        listPerfil.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.listPerfil.dequeueReusableCell(withIdentifier: "perfilCell", for: indexPath) as! PerfilCell
        cell.tituloCell?.text = listPerfilConfig[indexPath.row].titulo
        cell.imageView?.image = listPerfilConfig[indexPath.row].imagem
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPerfilConfig.count
    }
}
