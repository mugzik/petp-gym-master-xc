//
//  MainViewController.swift
//  petp-gym-master
//
//  Created by Maksim Rafalchuk on 16/10/2024.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    var trainingCollection: TrainingCollectionView!
    
    let addNewButton: UIButton = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        setLayout()
        bindings()
    }
}

private extension MainViewController {
    func setup() {
        trainingCollection = TrainingCollectionView()
        view.backgroundColor = UIColor.MainTheme.balckPearl
        trainingCollection.backgroundColor = UIColor.MainTheme.balckPearl
    
        addNewButton.setTitle("Start new", for: .normal)
        addNewButton.backgroundColor = UIColor.MainTheme.buttonColor
        addNewButton.layer.cornerRadius = 15
    }
    
    func setLayout() {
        view.addSubview(addNewButton)
        addNewButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            $0.centerX.equalToSuperview()
            $0.width.equalTo(128)
            $0.height.equalTo(32)
        }
        
        view.addSubview(trainingCollection)
        trainingCollection.snp.makeConstraints {
            $0.top.equalTo(addNewButton.snp.bottom).offset(10)
            $0.leading.equalToSuperview()
            $0.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
    
    func bindings() {
        addNewButton.addTarget(self, action: #selector(goToCreateNewView), for: .touchDown)
    }
    
    func configure() {
        
    }
    
    @objc func goToCreateNewView() {
        debugPrint("TEST")
        
        let vc = NewTrainingViewController()
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

