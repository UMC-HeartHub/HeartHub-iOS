//
//  ConnectCheckPopUpViewController.swift
//  HeartHub
//
//  Created by 제민우 on 2023/08/15.
//

import UIKit

final class LogoutPopUpViewController: UIViewController {
    
    private let logoutPopupView = LogoutPopupView()
    
    override func loadView() {
        view = logoutPopupView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAddTarget()
    }
    
    private func configureAddTarget() {
        logoutPopupView.nobtn.addTarget(self, action: #selector(didTapnobtn), for: .touchUpInside)
        
        logoutPopupView.yesbtn.addTarget(self, action: #selector(didTapyesbtn), for: .touchUpInside)
    }

    @objc private func didTapnobtn() {
        dismiss(animated: true)
    }
    
    @objc private func didTapyesbtn() {
      print("d")
    }
}

