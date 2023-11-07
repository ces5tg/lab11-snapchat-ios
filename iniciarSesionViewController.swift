//
//  iniciarSesionViewController.swift
//  lab11-snaptchat
//
//  Created by cesar on 10/31/23.
//  Copyright © 2023 cesar. All rights reserved.
//

import UIKit

class iniciarSesionViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text! , password:passwordTextField.text!){(user , error) in
            print("intentando iniciar sesion")
            if error != nil{
                print("se presneto el siguiente error \(error)")
            }else {
                print("incio de sesion exitoro")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
