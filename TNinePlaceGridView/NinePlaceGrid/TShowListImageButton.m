//
//  TShowListImageButton.m
//  LoveShare
//
//  Created by ways on 2017/5/10.
//  Copyright © 2017年 tikeyc. All rights reserved.
//

#import "TShowListImageButton.h"

#import "TShowListImageCollectionViewController.h"
#import "TNinePlaceGridView.h"

@interface TShowListImageButton ()

@property (nonatomic,strong)TShowListImageCollectionViewController *showListImageCollectionVC;

@end

@implementation TShowListImageButton


- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initProperty];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
    
    [self initProperty];
}

#pragma mark - init

- (void)initProperty {
    [self addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)setShowImages:(NSArray *)showImages {
    _showImages = showImages;
    
}

- (NSMutableArray *)converFrames {
    _converFrames = [NSMutableArray array];
    for (int i = 0; i < _showImages.count; i++) {
        
        TNinePlaceGridCollectionCell *cell = (TNinePlaceGridCollectionCell *)[_myCollectionView cellForItemAtIndexPath:[NSIndexPath indexPathForRow:i inSection:0]];
        CGRect converFrame = [cell.imageView convertRect:cell.imageView.frame toView:self.window];
        [_converFrames addObject:NSStringFromCGRect(converFrame)];
    }
    return _converFrames;
}

#pragma mark - action

- (void)buttonClick:(UIButton *)button {
    [self showImageListToWindowFromImages:self.showImages];
}

#pragma mark - show

- (void)showImageListToWindowFromImages:(NSArray *)showImages {
    
    self.showListImageCollectionVC.view.frame = self.window.frame;
    [self.window addSubview:self.showListImageCollectionVC.view];
    [self.showListImageCollectionVC showListImage];
    
}


- (TShowListImageCollectionViewController *)showListImageCollectionVC {
    if (_showListImageCollectionVC == nil) {
        _showListImageCollectionVC = [[TShowListImageCollectionViewController alloc] init];
    }
    //在访问_showListImageCollectionVC.view之前设置好相关属性
    CGRect converFrame = [self convertRect:self.frame toView:self.window];
    _showListImageCollectionVC.currentIndex = self.tag;
    _showListImageCollectionVC.converFrame = converFrame;
    _showListImageCollectionVC.converFrames = self.converFrames;
    _showListImageCollectionVC.currentImage = self.currentImage;
    _showListImageCollectionVC.showImages = self.showImages;
    return _showListImageCollectionVC;
}


@end













