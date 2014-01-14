//
//  UICollectionViewWaterfallCell.m
//  Demo
//
//  Created by Nelson on 12/11/27.
//  Copyright (c) 2012年 Nelson. All rights reserved.
//

#import "CHTCollectionViewWaterfallCell.h"

@implementation CHTCollectionViewWaterfallCell

#pragma mark - Accessors
- (UILabel *)displayLabel {
	if (!_displayLabel) {
		_displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, self.contentView.bounds.size.height - 40, self.contentView.bounds.size.width, 40)];
		_displayLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
		_displayLabel.textColor = [UIColor yellowColor];
	}
    NSLog(@"라벨 뷰 시작점 : %f", self.contentView.bounds.size.height - 40);
	return _displayLabel;
}

- (UIImageView *)displayImage {
    if (!_displayImage) {
        _displayImage = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height - 40)];
        _displayImage.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        _displayImage.backgroundColor = [UIColor yellowColor];
        
    }
    NSLog(@"이미지 뷰 높이 : %f", self.contentView.bounds.size.height - 40);
    return _displayImage;
}

- (UIView *)displayView {
    if (!_displayView) {
        _displayView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.contentView.bounds.size.width, self.contentView.bounds.size.height)];
        _displayView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        _displayView.backgroundColor = [UIColor blackColor];
    }
    NSLog(@"전체 뷰 그리기");
    return _displayView;
}

#pragma mark - Life Cycle
- (void)dealloc {
	[_displayLabel removeFromSuperview];
	_displayLabel = nil;
}

- (id)initWithFrame:(CGRect)frame {
	if (self = [super initWithFrame:frame]) {
//		[self.contentView addSubview:self.displayLabel];
//        [self.contentView addSubview:self.displayImage];
        [self.displayView addSubview:self.displayImage];
        [self.displayView addSubview:self.displayLabel];
        [self.contentView addSubview:self.displayView];
	}
	return self;
}

- (void)setViewWithCellItem:(CellItem *)cellItem {
    NSString *filePath = [[NSBundle mainBundle] pathForResource:cellItem.imageName ofType:@"jpg"];
    UIImage *image = [UIImage imageWithContentsOfFile:filePath];
    self.displayImage.image = image;
    self.displayLabel.text = cellItem.description;
}

@end
