//
//  ViewController.m
//  CollectionviewDemo
//
//  Created by Femina Rajesh Brahmbhatt on 27/07/17.
//  Copyright © 2017 Femina Rajesh Brahmbhatt. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize cview,flowlayout;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    isgrid = NO;
    if (!isgrid) {
        [cview registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell1"];
    }
    else{
        [cview registerNib:[UINib nibWithNibName:@"CollectionViewCell2" bundle:nil] forCellWithReuseIdentifier:@"cell2"];
    }
    
    
    
   
    
    NSLog(@"completed");
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UICollectionView Delegate Methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 2;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (!isgrid) {
        CollectionViewCell *cell = [cview dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
        return cell;
    }
    else{
        CollectionViewCell2 *cell = [cview dequeueReusableCellWithReuseIdentifier:@"cell2" forIndexPath:indexPath];
        return cell;
    }
    
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (!isgrid) {
        return CGSizeMake(cview.frame.size.width, cview.frame.size.width/2);
    }
    else{
        return CGSizeMake((cview.frame.size.width/2)-20, 100);
    }
    
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section{
    return 0;
}

-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section{
    return 0;
}


- (IBAction)gridaction:(id)sender {
    isgrid = YES;
    [cview registerNib:[UINib nibWithNibName:@"CollectionViewCell2" bundle:nil] forCellWithReuseIdentifier:@"cell2"];
    UIEdgeInsets collectionViewInsets = UIEdgeInsetsMake(0.0, 10.0, 0.0, 10.0);
    cview.contentInset = collectionViewInsets;
    //cview.scrollIndicatorInsets = UIEdgeInsetsMake(0,20,0,20);

    [cview reloadData];
}

- (IBAction)listaction:(id)sender {
    isgrid = NO;
    [cview registerNib:[UINib nibWithNibName:@"CollectionViewCell" bundle:nil] forCellWithReuseIdentifier:@"cell1"];
    UIEdgeInsets collectionViewInsets = UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0);
    cview.contentInset = collectionViewInsets;
    cview.scrollIndicatorInsets = UIEdgeInsetsMake(0,0,0,0);
    [cview reloadData];
}

@end
