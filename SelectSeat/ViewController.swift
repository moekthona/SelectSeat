//
//  ViewController.swift
//  SelectSeat
//
//  Created by Moek Thona on 12/17/19.
//  Copyright © 2019 Moek Thona. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionSeat: UICollectionView!{
        didSet {
            collectionSeat.bounces = false
        }
    }
    @IBOutlet weak var gridLayout: StickyGridCollectionViewLayout!{
        didSet {
            gridLayout.stickyRowsCount = 0
            gridLayout.stickyColumnsCount = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SelectSeatCollectionCell.cellId, for: indexPath) as! SelectSeatCollectionCell
        config(cell: cell, at: indexPath)
        return cell
    }
    
    func config(cell : SelectSeatCollectionCell,at indexPath : IndexPath){
         cell.viewSelectSeat.isHidden = (indexPath.row + 1) % 4 == 0 ? true : false
         cell.lblTtitle.text =  "\(indexPath.row)"
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
         if((indexPath.row + 1) % 4 == 0){
            return CGSize(width: 25, height: 80)
         }
        return CGSize(width: 80, height: 80)
    }
}

