//
//  ViewController.m
//  tvOSTest
//
//  Created by PAN on 2016/1/15.
//  Copyright © 2016年 PAN. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@property (weak, nonatomic) IBOutlet UICollectionView *photoCollectionView;

@property (strong, nonatomic) NSArray *photoArray;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	
	self.photoArray = [[NSArray alloc] initWithObjects:@"Baby 1.jpg", @"Baby 2.jpg", @"Baby 3.jpg", @"Baby 4.jpg", @"Baby 5.jpg", @"Baby 6.jpg", @"Baby 7.jpg", @"Baby 8.jpg", @"Baby 1.jpg", @"Baby 2.jpg", @"Baby 3.jpg", @"Baby 4.jpg", @"Baby 5.jpg", @"Baby 6.jpg", @"Baby 7.jpg", @"Baby 8.jpg", nil];
//	self.photoCollect
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

-(void) didUpdateFocusInContext:(UIFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator{
	
	NSLog(@"haha");
}

#pragma  mark - CollectionView Delegate


-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
	return self.photoArray.count;
}

-(UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
	
	PhotoCollectionCell *photoCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCell" forIndexPath:indexPath];
	
	if (photoCell == nil) {
		photoCell = [[PhotoCollectionCell alloc] init];
	}
	
	
	NSString *imageName = [self.photoArray objectAtIndex:indexPath.row];
	
	photoCell.photoImageView.image = [UIImage imageNamed:imageName];
	
	
	return photoCell;
}


//func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
//	if let indexPath = collectionView.indexPathsForSelectedItems()?.first {
//		collectionView.deselectItemAtIndexPath(indexPath, animated: true)
//		return false
//	} else {
//		return true
//	}
//}

-(BOOL) collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath{
	if (indexPath == collectionView.indexPathsForSelectedItems.firstObject) {
		[collectionView deselectItemAtIndexPath:indexPath animated:YES];
		return NO;
	}else{
		return YES;
	}
}


-(BOOL) collectionView:(UICollectionView *)collectionView canFocusItemAtIndexPath:(NSIndexPath *)indexPath{
	return NO;
}

@end
