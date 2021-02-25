//
//  Register.swift
//  rutas
//
//  Created by alumnos on 28/01/2021.
//  Copyright © 2021 alumnos. All rights reserved.
//

import Foundation
import UIKit

class registerViewController: UIViewController {
    

    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var confirmPassField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }


    @IBAction func registerButton(_ sender: Any) {
        
       if passField.text! != confirmPassField.text! {
            print("Las contraseñas no coinciden")
            return
        }else{
            
            let userText = userField.text!
            let passText = passField.text!
            
            let user = User(user: userText, pass: passText)
            
            let postRequest = APIRequest(endpoint: "api/register")
            
            postRequest.save(user, completion: {result in
                switch result{
                case .success(let user):
                    print("El usuario creado con éxito:\(user.user) ")
                case .failure(let error):
                    print("Error \(error)")
                }
            })
            
        }

}
}
