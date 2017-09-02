//
//  ViewController.h
//  CollectionviewDemo
//
//  Created by Femina Rajesh Brahmbhatt on 27/07/17.
//  Copyright © 2017 ENM Technologies. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CollectionViewCell.h"
#import "CollectionViewCell2.h"

@interface ViewController : UIViewController<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>
{
    BOOL isgrid;
}

@property (nonatomic,retain) IBOutlet UICollectionView *cview;
@property (nonatomic,retain) IBOutlet UICollectionViewFlowLayout *flowlayout;
@property (weak, nonatomic) IBOutlet UIButton *btnlist;
@property (weak, nonatomic) IBOutlet UIButton *btngrid;
- (IBAction)gridaction:(id)sender;
- (IBAction)listaction:(id)sender;

@end

