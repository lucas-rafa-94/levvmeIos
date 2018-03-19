//
//  HistoricoViewController.swift
//  levv.me
//
//  Created by Lucas dos Santos on 3/19/18.
//  Copyright © 2018 Lucas dos Santos. All rights reserved.
//

import UIKit


class HistoricoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var histSearchBar: UISearchBar!
    
    var listHistoricoData: [Historico] = []
    
    
    @IBOutlet weak var listHistorico: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.listHistorico.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.listHistorico.dataSource = self
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self]).setTitleTextAttributes([NSAttributedStringKey(rawValue: NSAttributedStringKey.foregroundColor.rawValue): UIColor.orange], for: .normal)
        self.listHistorico.tableFooterView = UIView()
        
        var historico: Historico
        
        historico = Historico(titulo: "Entrega 01/12", descricao: "Secondary line text lorem ipsum dapibus, neque id cursus faucibus", imagem: #imageLiteral(resourceName: "itemLevvMeList") )
        listHistoricoData.append(historico)
        
        historico = Historico(titulo: "Entrega 02/12", descricao: "Secondary line text lorem ipsum dapibus, neque id cursus faucibus", imagem: #imageLiteral(resourceName: "itemLevvMeList") )
        listHistoricoData.append(historico)
        
        historico = Historico(titulo: "Entrega 03/12", descricao: "Secondary line text lorem ipsum dapibus, neque id cursus faucibus", imagem: #imageLiteral(resourceName: "itemLevvMeList") )
        listHistoricoData.append(historico)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = self.listHistorico.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! HistoricoCell
       
        cell.descricaoLabel?.text = listHistoricoData[indexPath.row].descricao
        cell.tituloLabel?.text = listHistoricoData[indexPath.row].titulo
        cell.histImageView?.image = listHistoricoData[indexPath.row].imagem
        
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listHistoricoData.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        listHistorico.deselectRow(at: indexPath, animated: true)
    }
    
    
    
}
