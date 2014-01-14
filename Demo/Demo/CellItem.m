//
//  CellItem.m
//  Demo
//
//  Created by Lee HyunYoung on 2014. 1. 14..
//  Copyright (c) 2014년 Nelson. All rights reserved.
//

#import "CellItem.h"

@implementation CellItem

- (id)cellItemWithImageName:(NSString *)imageName description:(NSString *)description {
    self.imageName = imageName;
    self.description = description;
}
@end
