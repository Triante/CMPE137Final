//
//  PlayersCollectionViewController.swift
//  FavSports
//
//  Created by Jay Bajaj on 5/3/16.
//  Copyright © 2016 CMPE 137. All rights reserved.
//

import UIKit
import Firebase

private let reuseIdentifier = "Cell"

class PlayersCollectionViewController: UICollectionViewController{

    @IBOutlet var colview: UICollectionView!
    
    var playerNames =  [String]()
    let playerImageArray = [UIImage(named: "ar"), UIImage(named: "as"), UIImage(named: "hb"), UIImage(named: "lk"),UIImage(named: "mo"), UIImage(named: "ma"), UIImage(named: "nm"), UIImage(named: "og"), UIImage(named: "pm"), UIImage(named: "pc"), UIImage(named: "tw")]
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        Firebase(url: "\(PLAYERS_REF)/Arsenal").observeEventType(.Value, withBlock: { snapshot in
            var newPlayers = [String]()
            for player in snapshot.children {
                let name = player.value["name"] as! String
                newPlayers.append(name)
            }
            self.playerNames = newPlayers
            self.collectionView?.reloadData()
            print(self.playerNames)
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return self.playerNames.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath)
    
        // Configure the cell
    
        return cell
    }
    

    
    
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
