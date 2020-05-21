//
//  ViewController.swift
//  jsonParsingNewsApi
//
//  Created by Bruna Fernanda Drago on 15/05/20.
//  Copyright © 2020 Bruna Fernanda Drago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1 - Criar uma url para colocar o caminho nela
        let urlString = "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=f176483fc0254f14a5033dd0ae57e45b"
        
        //2 - criar um objeto URL
        let url = URL(string: urlString)
        //2.1 - testar para ver se tem erros e ver se a url não retorna vazia
        guard url != nil else{
            print("Erro - Não foi possível encontrar o caminho url")
            return
        }
        
        //3 - Criar uma session
        let session = URLSession.shared
        
        //4 - Criar um objeto data
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            //4.1 - Testar p ver se tem erros e se há dados para fazer o parse
            if error == nil && data != nil {
                
                //5 - Criar um objeto decoder e implementar o JSONDecoder para fazer o parse
                let decoder = JSONDecoder()
                do{
                    let newsFeed = try decoder.decode(NewsFeed.self, from: data!)
                    print(newsFeed)
                }
                catch{
                    print ("Erro - Não foi possivel fazer o parse do Json")
                }
                
            }
            
        }
        //6 - Fazer a chamada da API
        dataTask.resume()
    }


}

