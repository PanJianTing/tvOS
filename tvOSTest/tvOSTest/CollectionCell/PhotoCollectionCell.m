//
//  PhotoCollectionCell.m
//  tvOSTest
//
//  Created by PAN on 2016/1/17.
//  Copyright © 2016年 PAN. All rights reserved.
//

#import "PhotoCollectionCell.h"

@implementation PhotoCollectionCell

-(void) awakeFromNib{
	self.photoImageView.adjustsImageWhenAncestorFocused = YES;
	self.photoImageView.clipsToBounds = NO;
}


@end
