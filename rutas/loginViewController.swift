//
//  loginViewController.swift
//  rutas
//
//  Created by user177575 on 1/25/21.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit

class loginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let networkingService = NetworkinService()
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    @IBAction func loginTouch(_ sender: Any) {
        
        let userText = emailTextField.text!
        let pass = passwordTextField.text!
        
        
        let user = User(user: userText, pass: pass)
        
        let postRequest = APIRequest(endpoint: "api/login")
        
        postRequest.login(user, completion: {result in
            switch result{
            case .success(let user):
                print("Logueado con éxito:\(user.user) ")
            case .failure(let error):
                print("Error \(error)")
            }
        })
    }
}
