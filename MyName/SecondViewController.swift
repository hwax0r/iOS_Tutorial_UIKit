//
//  SecondViewController.swift
//  MyName
//
//  Created by David Sergeev on 13.11.2021.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func showAlert(){
        // инициализация всплывающего окна
        let alertController = UIAlertController(
            title: "Welcome",
            message: "This is \"myName\" application",
            preferredStyle: .alert)
        
        // кнопки всплывающего окна
        let actionOK = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil)
        let actionCancel = UIAlertAction(
            title: "Cancel",
            style: .cancel,
            handler: nil)
        
        // добавление кнопок
        alertController.addAction(actionOK)
        alertController.addAction(actionCancel)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func changeLabelText(_ sender: UIButton) {
        if let buttonText = sender.titleLabel!.text {
            self.myLabel.text = "\(buttonText) button was pressed"
        }
    }
}
