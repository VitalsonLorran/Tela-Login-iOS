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
        let alert: UIAlertController = UIAlertController(title: "Alerta", message: "Olá", preferredStyle: .alert)
        
        let action1: UIAlertAction = UIAlertAction(title: "Deault", style: .default){
            (action) in
            print("clicou no default")
        }
        let action2: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel){
            (action) in
            print("clicou no cancel")
        }
        let action3: UIAlertAction = UIAlertAction(title: "Desctructive", style: .destructive){
            (action) in
            print("Clicou no Destructive")
        }
        
        alert.addAction(action1)
        alert.addAction(action2) //a segunda opção sempre será o cancel
        alert.addAction(action3)
        
        self.present(alert, animated: true)
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

