//
//  ViewController.swift
//  practice
//
//  Created by Konstantin on 27.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var customView: LoginView?
    
    init() {
        self.customView = LoginView(frame: UIScreen.main.bounds)
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.customView?.loadView(controller: self)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.customView?.setViews()
        if let customView = customView {
            self.view.addSubview(customView)
        }
    }
    
}

extension ViewController {
    
    func buttonCodeOnTouch() {
        guard let customView = customView else { return }
        if customView.textFieldNumber.text == "" {
            print("Ввод некорректен")
            return
        } else {
            if let text = customView.textFieldNumber.text {
                print(text)
                customView.textFieldCode.isHidden = false
                customView.buttonLogin.isHidden = false
            }
        }
    }
    
    func buttonLoginOnTouch() {
        guard let customView = customView else { return }
        if customView.textFieldCode.text == customView.textFieldNumber.text {
            let feedVC = FeedViewController()
            navigationController?.pushViewController(feedVC, animated: true)
        } else {
            print("Ввод некорректен")
            return
        }
    }
}


