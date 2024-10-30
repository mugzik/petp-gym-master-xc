//
//  NewTrainingViewController.swift
//  petp-gym-master
//
//  Created by Maksim Rafalchuk on 24/10/2024.
//

import UIKit
import SnapKit

class NewTrainingViewController : UIViewController {
    let nameLabel: UILabel = .init()
    let nameEditor: UITextField = .init()
    let finishButton: UIButton = .init()
    
    var delegate: NewTrainingViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        layout()
        binding()
    }
}

private extension NewTrainingViewController {
    func setup() {
        nameLabel.text = "Name"
        nameLabel.textColor = .white
        
        nameEditor.backgroundColor = .white
        nameEditor.text = "Enter Name"
        
        finishButton.setTitle("Finish", for: .normal)
        finishButton.backgroundColor = UIColor.MainTheme.buttonColor
        finishButton.layer.cornerRadius = 15
        
        view.backgroundColor = UIColor.MainTheme.balckPearl
    }
    
    func layout() {
        view.addSubview(nameLabel)
        nameLabel.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.leading.equalToSuperview().offset(10)
            $0.width.equalTo(64)
        }
        
        view.addSubview(nameEditor)
        nameEditor.snp.makeConstraints {
            $0.top.equalTo(nameLabel.snp.top)
            $0.leading.equalTo(nameLabel.snp.trailing).offset(10)
            $0.trailing.equalToSuperview().offset(10)
        }
        
        view.addSubview(finishButton)
        finishButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(128)
            $0.height.equalTo(32)
        }
    }
    
    func binding() {
        //finishButton.addTarget(self, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
    }
}

protocol NewTrainingViewControllerDelegate {
    func saveTraining()
}
