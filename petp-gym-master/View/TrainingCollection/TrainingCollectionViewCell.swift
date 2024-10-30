//
//  TrainingCollectionViewCell.swift
//  petp-gym-master
//
//  Created by Maksim Rafalchuk on 22/10/2024.
//

import UIKit
import SnapKit

struct TrainingData {
    var name: String?
    var date: String
    var callories: Int
    var overview: String
}

class TrainingCollectionViewCell: UICollectionViewCell {
    let trainingName    = UILabel()
    let date            = UILabel()
    let callories       = UILabel()
    let overview        = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with data: TrainingData) {
        trainingName.text = data.name
        date.text = data.date
        callories.text = "Callories: \(data.callories)"
        overview.text = data.overview
    }
}

private extension TrainingCollectionViewCell {
    func setup() {
        backgroundColor = UIColor.MainTheme.blueChill
        layer.cornerRadius = 20
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 2
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 70
        layer.shadowRadius = 10
    }
    
    func layout() {
        addSubview(trainingName)
        trainingName.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.leading.equalToSuperview().offset(10)
        }
        
        addSubview(date)
        date.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().offset(-10)
        }
        
        addSubview(overview)
        overview.snp.makeConstraints {
            $0.top.equalTo(trainingName.snp.bottom).offset(5)
            $0.leading.equalToSuperview().offset(10)
        }
        
        addSubview(callories)
        callories.snp.makeConstraints {
            $0.trailing.equalToSuperview().offset(-10)
            $0.bottom.equalToSuperview().offset(-10)
        }
    }
}
