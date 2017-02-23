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


-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray<UICollectionViewLayoutAttributes *> *superAttrs = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray<UICollectionViewLayoutAttributes *> *newAttrs = [[NSMutableArray alloc] initWithArray:superAttrs];;
    
    CGFloat collectionViewHeight = self.collectionView.frame.size.height;
    
    for (UICollectionViewLayoutAttributes *attribute in newAttrs) {
        CGFloat newYposition = arc4random_uniform(collectionViewHeight - self.itemSize.height);
        
        CGFloat newHeight = newYposition * 0.6;
        if (newHeight < 50){
            newHeight = 50;
        }
        
        attribute.frame = CGRectMake(attribute.frame.origin.x, newYposition, self.itemSize.width, newHeight);

//        [newAttrs addObject:attribute];
    }
    
    return newAttrs;
    
}


@end
