//
//  SignUp3ViewController.swift
//  test
//
//  Created by 제민우 on 2023/07/08.
//


import UIKit

class SignUp4ViewController: UIViewController {

    private let signUp4View = SignUp4View()

    let unChekedimage = UIImage(named: "AgreeRadioBtnUnChecked")
    let Chekedimage = UIImage(named: "AgreeRadioBtnChecked")
    
    override func loadView() {
        view = signUp4View
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addTarget()
    }
    
    func addTarget() {
        signUp4View.rightArrowBtn.addTarget(self, action: #selector(didTapRightArrowBtn), for: .touchUpInside)
        signUp4View.leftArrowBtn.addTarget(self, action: #selector(didTapLeftArrowBtn), for: .touchUpInside)
        signUp4View.allTermAgreeBtn.addTarget(self, action: #selector(didTapAllAgreeBtn), for: .touchUpInside)
        signUp4View.privacyAgreeBtn.addTarget(self, action: #selector(didTapPrivacyAgreeBtn), for: .touchUpInside)
        signUp4View.termOfUseAgreeBtn.addTarget(self, action: #selector(didTapTermOfUseAgreeBtn), for: .touchUpInside)
        signUp4View.marketingAgreeBtn.addTarget(self, action: #selector(didTapMarketingAgreeBtn), for: .touchUpInside)

        signUp4View.privacyDescriptionBtn.addTarget(self, action: #selector(didTapPrivacyArrowBtn), for: .touchUpInside)
        signUp4View.termOfUseDescriptionBtn.addTarget(self, action: #selector(didTapTermOfUseArrowBtn), for: .touchUpInside)
        signUp4View.marketingDescriptionBtn.addTarget(self, action: #selector(didTapmarketingDescriptionBtn), for: .touchUpInside)

    }
    
    @objc func didTapRightArrowBtn() {
        let loginVC = LoginViewController()
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true, completion: nil)
    }
    
    @objc func didTapLeftArrowBtn() {
        let signUp3VC = SignUp3ViewController()
        signUp3VC.modalPresentationStyle = .fullScreen
        present(signUp3VC, animated: true, completion: nil)
    }
    
    @objc func didTapAllAgreeBtn() {
        if signUp4View.allTermAgreeBtn.currentImage == UIImage(named: "AgreeRadioBtnChecked") {
            signUp4View.allTermAgreeBtn.setImage(unChekedimage, for: .normal)
            signUp4View.privacyAgreeBtn.setImage(unChekedimage, for: .normal)
            signUp4View.termOfUseAgreeBtn.setImage(unChekedimage, for: .normal)
            signUp4View.marketingAgreeBtn.setImage(unChekedimage, for: .normal)
        } else {
            signUp4View.allTermAgreeBtn.setImage(Chekedimage, for: .normal)
            if signUp4View.privacyAgreeBtn.currentImage == Chekedimage ||
                signUp4View.termOfUseAgreeBtn == Chekedimage ||
                signUp4View.marketingAgreeBtn == Chekedimage {
                signUp4View.privacyAgreeBtn.setImage(Chekedimage, for: .normal)
                signUp4View.termOfUseAgreeBtn.setImage(Chekedimage, for: .normal)
                signUp4View.marketingAgreeBtn.setImage(Chekedimage, for: .normal)
            } else if signUp4View.privacyAgreeBtn.currentImage == unChekedimage ||
                        signUp4View.termOfUseAgreeBtn == unChekedimage ||
                        signUp4View.marketingAgreeBtn == unChekedimage  {
                signUp4View.privacyAgreeBtn.setImage(Chekedimage, for: .normal)
                signUp4View.termOfUseAgreeBtn.setImage(Chekedimage, for: .normal)
                signUp4View.marketingAgreeBtn.setImage(Chekedimage, for: .normal)
            } else{
                signUp4View.privacyAgreeBtn.setImage(unChekedimage, for: .normal)
                signUp4View.termOfUseAgreeBtn.setImage(unChekedimage, for: .normal)
                signUp4View.marketingAgreeBtn.setImage(unChekedimage, for: .normal)
            }
        }
        

    }
    
    @objc func didTapPrivacyAgreeBtn() {
        if signUp4View.privacyAgreeBtn.currentImage == UIImage(named: "AgreeRadioBtnChecked") {
            signUp4View.privacyAgreeBtn.setImage(unChekedimage, for: .normal)
        } else {
            signUp4View.privacyAgreeBtn.setImage(Chekedimage, for: .normal)
        }
    }
    
    @objc func didTapTermOfUseAgreeBtn() {
        if signUp4View.termOfUseAgreeBtn.currentImage == UIImage(named: "AgreeRadioBtnChecked") {
            signUp4View.termOfUseAgreeBtn.setImage(unChekedimage, for: .normal)
        } else {
            signUp4View.termOfUseAgreeBtn.setImage(Chekedimage, for: .normal)
        }
    }
    
    @objc func didTapMarketingAgreeBtn() {
        if signUp4View.marketingAgreeBtn.currentImage == UIImage(named: "AgreeRadioBtnChecked") {
            signUp4View.marketingAgreeBtn.setImage(unChekedimage, for: .normal)
        } else {
            signUp4View.marketingAgreeBtn.setImage(Chekedimage, for: .normal)
        }
    }
        
    @objc func didTapPrivacyArrowBtn() {
        
        
    }
    
    @objc func didTapTermOfUseArrowBtn() {
        
        
    }
    
    @objc func didTapmarketingDescriptionBtn() {
        
    }
   
   
}
