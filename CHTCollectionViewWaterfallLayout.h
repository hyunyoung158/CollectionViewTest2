//
//  UICollectionViewWaterfallLayout.h
//
//  Created by Nelson on 12/11/19.
//  Copyright (c) 2012 Nelson Tai. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CHTCollectionViewWaterfallLayout;

@protocol CHTCollectionViewDelegateWaterfallLayout <UICollectionViewDelegate>

- (CGFloat)collectionView:(UICollectionView *)collectionView
                   layout:(CHTCollectionViewWaterfallLayout *)collectionViewLayout
 heightForItemAtIndexPath:(NSIndexPath *)indexPath;
@optional
- (CGFloat)collectionView:(UICollectionView *)collectionView
  heightForHeaderInLayout:(CHTCollectionViewWaterfallLayout *)collectionViewLayout;
- (CGFloat)collectionView:(UICollectionView *)collectionView
  heightForFooterInLayout:(CHTCollectionViewWaterfallLayout *)collectionViewLayout;
@end

@interface CHTCollectionViewWaterfallLayout : UICollectionViewLayout

@property (nonatomic, weak) IBOutlet id<CHTCollectionViewDelegateWaterfallLayout> delegate;
@property (nonatomic, assign) NSUInteger columnCount; // How many columns 한줄에 몇개!
@property (nonatomic, assign) CGFloat itemWidth; // Width for every column 아이템 가로크기
@property (nonatomic, assign) UIEdgeInsets sectionInset; // The margins used to lay out content in a section 여백
@property (nonatomic, assign) CGFloat verticalItemSpacing; // Spacing between items vertically 세로 여백
@end
