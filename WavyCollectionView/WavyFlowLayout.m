//
//  WavyFlowLayout.m
//  WavyCollectionView
//
//  Created by Callum Davies on 2017-02-23.
//  Copyright © 2017 Callum Davies. All rights reserved.
//

#import "WavyFlowLayout.h"

@implementation WavyFlowLayout

-(void)prepareLayout
{
    self.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.itemSize = CGSizeMake(100, 50);
    
    self.minimumInteritemSpacing = CGFLOAT_MAX;
}


//-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
//{
//    
//}


@end
