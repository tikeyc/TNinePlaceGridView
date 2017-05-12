//
//  TShowListImageButton.h
//  LoveShare
//
//  Created by ways on 2017/5/10.
//  Copyright © 2017年 tikeyc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TShowListImageButton : UIButton

@property (nonatomic,strong)UICollectionView *myCollectionView;
@property (nonatomic,strong)NSMutableArray *converFrames;
@property (nonatomic,strong)NSArray *showImages;

- (void)showImageListToWindowFromImages:(NSArray *)showImages;

@end
