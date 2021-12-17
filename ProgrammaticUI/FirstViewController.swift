//
//  FirstViewController.swift
//  ProgrammaticUI
//
//  Created by mac on 12/17/21.
//

import UIKit

class FirstViewController: UIViewController {
    var contentView:UIView = UIView()
    var background:UIImageView = UIImageView()
    var fbButton:UIButton = UIButton()
    var gmailButton:UIButton = UIButton()
    var emailButton:UIButton = UIButton()
    var titleLabel:UILabel = UILabel()
    var hintLabel:UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.green
        setUpContent()
        setUpBackground()
         setUpFbButton()
         setUpEmailButton()
         setUpGmailButton()
         setUpHintLabel()
         setUpTitleLabel()
        
        fbButton.addTarget(self, action: #selector(self.fbButtonPress), for: .touchUpInside)
        gmailButton.addTarget(self, action: #selector(self.gmailButtonPress), for: .touchUpInside)
         emailButton.addTarget(self, action: #selector(self.emailButtonPress), for: .touchUpInside)
    }
    
    @objc func fbButtonPress(){
     print("fb button pressed")
     }

     @objc func gmailButtonPress(){
     print("gmail button pressed")
     }

     @objc func emailButtonPress(){
     print("email button pressed")
     }

    func setUpContent(){
     //code to be added
        self.view.addSubview(contentView)
        contentView.addSubview(background)
        contentView.addSubview(fbButton)
        contentView.addSubview(gmailButton)
        contentView.addSubview(emailButton)
        contentView.addSubview(hintLabel)
        contentView.addSubview(titleLabel)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
         contentView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
         contentView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
         contentView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        
     }
    
    func setUpBackground(){
        background.image = UIImage(named: "Background")
        background.translatesAutoresizingMaskIntoConstraints = false
        background.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
         background.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
         background.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
         background.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
     }

     func setUpFbButton(){
         fbButton.setBackgroundImage(UIImage(named: "FB"), for: .normal)
         fbButton.setTitle("Sign in with Facebook", for: .normal)
         fbButton.setTitleColor(.black, for: .normal)
         fbButton.translatesAutoresizingMaskIntoConstraints = false
         
         fbButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
          fbButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
          fbButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
          fbButton.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
     }

     func setUpEmailButton(){
         emailButton.setBackgroundImage(UIImage(named: "Email"), for: .normal)
         emailButton.setTitle("Sign in with Email", for: .normal)
         emailButton.setTitleColor(.black, for: .normal)
         emailButton.translatesAutoresizingMaskIntoConstraints = false
         
         emailButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
          emailButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
          emailButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
          emailButton.topAnchor.constraint(equalTo: gmailButton.bottomAnchor,constant: 20).isActive = true
     }

     func setUpGmailButton(){
         gmailButton.setBackgroundImage(UIImage(named: "Google"), for: .normal)
         gmailButton.setTitle("Sign in with Google", for: .normal)
         gmailButton.setTitleColor(.black, for: .normal)
         gmailButton.translatesAutoresizingMaskIntoConstraints = false
         
         gmailButton.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 50).isActive = true
          gmailButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -50).isActive = true
          gmailButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
          gmailButton.topAnchor.constraint(equalTo: fbButton.bottomAnchor,constant: 20).isActive = true
     }

     func setUpHintLabel(){
         hintLabel.text = "Login or create an account"
         hintLabel.translatesAutoresizingMaskIntoConstraints = false
         
         hintLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
          hintLabel.bottomAnchor.constraint(equalTo: fbButton.topAnchor, constant: -20).isActive = true
     }

     func setUpTitleLabel(){
         titleLabel.text = "Social \nSquid"
         titleLabel.numberOfLines = 0
         titleLabel.font = UIFont(name: "AvenirNext-Regular", size: 44)
         titleLabel.translatesAutoresizingMaskIntoConstraints = false
         
         titleLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
          titleLabel.bottomAnchor.constraint(equalTo: hintLabel.topAnchor, constant: -50).isActive = true
     }
    
    
    
}
