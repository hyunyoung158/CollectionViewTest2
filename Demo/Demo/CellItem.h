//
//  CellItem.h
//  Demo
//
//  Created by Lee HyunYoung on 2014. 1. 14..
//  Copyright (c) 2014년 Nelson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CellItem : NSObject

@property (strong, nonatomic) NSString *imageName;
@property (strong, nonatomic) NSString *description;

- (id)cellItemWithImageName:(NSString *)imageName description:(NSString *)description;
@end
