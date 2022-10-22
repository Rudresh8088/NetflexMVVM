//
//  CollectionViewTableViewCell.swift
//  New
//
//  Created by Rudresh Uppin on 18/10/22.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    static let identifier = "CollectionViewTableViewCell"
   
    
    
    private let collectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 140, height:  200)
        layout.scrollDirection = .horizontal
        let collectionview = UICollectionView(frame: .zero, collectionViewLayout:  layout)
        collectionview.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionview
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .systemPink
        contentView.addSubview(collectionview)
        
      
        
        collectionview.dataSource = self
        collectionview.delegate = self
    }
    
    override func layoutSubviews() {
        collectionview.frame = contentView.bounds
    }
 
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}


extension CollectionViewTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate{
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
   
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .green
        return cell
        
    }
    
    
}
