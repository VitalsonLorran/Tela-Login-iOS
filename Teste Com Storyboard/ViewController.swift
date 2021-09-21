//
//  ViewController.swift
//  Teste Com Storyboard
//
//  Created by Vitalson Lorran on 21/09/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var imageLogo: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var enviarButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func clicouEnviarButton(_ sender: UIButton) {
        let email: String? = self.emailTextField.text
        let password :String? = self.passwordTextField.text
        print("Dados: Email \(email) Password: \(password)")
        
    }
    
    //função para apertar return e o teclado ir para o próximo textField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //nao entendi mto bem
        
        //se está no email, entao
        if textField == self.emailTextField {
            //passa para o password
            self.passwordTextField.becomeFirstResponder()
        }else {
            self.passwordTextField.resignFirstResponder()
        }
        return true
    }
}

