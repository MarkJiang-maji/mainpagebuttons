//
//  ProfileViewController.swift
//  mainpagebuttons
//
//  Created by markchiang on 2023/9/30.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        conFigureNavigationbar()
    }
    private func conFigureNavigationbar(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName:"gear"), style: .done, target: self, action: #selector(didTapSettingbutton))
    }
        
    @objc private func didTapSettingbutton(){
        let vc = SettingsViewController()
        vc.title = "settings"; navigationController?.pushViewController(vc,animated:true)
    }
}
