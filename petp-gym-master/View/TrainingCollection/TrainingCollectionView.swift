//
//  TrainingCollectionView.swift
//  petp-gym-master
//
//  Created by Maksim Rafalchuk on 21/10/2024.
//

import UIKit

class TrainingCollectionView: UICollectionView {
    var trainings: [TrainingData] = []
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 8
        
        super.init(frame: .zero, collectionViewLayout: layout)
        dataSource = self
        delegate = self
        register(TrainingCollectionViewCell.self, forCellWithReuseIdentifier: "trCell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}

extension TrainingCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return trainings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "trCell", for: indexPath) as! TrainingCollectionViewCell
        
        cell.configure(with: trainings[indexPath.item])
        
        return cell
    }
}

extension TrainingCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width - 32
        return CGSize(width: width, height: 86)
    }
}
