//
//  TShowListImageCollectionViewController.h
//  LoveShare
//
//  Created by ways on 2017/5/10.
//  Copyright © 2017年 tikeyc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TShowListImageCollectionViewController : UIViewController

@property (nonatomic,strong)UIImageView *animationImageView;
@property (nonatomic,strong)UICollectionView *collectionView;
@property (nonatomic,strong)UIPageControl *pageControl;

@property (nonatomic,assign)CGRect converFrame;
@property (nonatomic,strong)NSMutableArray *converFrames;
@property (nonatomic,assign)NSInteger currentIndex;
@property (nonatomic,strong)UIImage *currentImage;
@property (nonatomic,strong)NSArray *showImages;


- (void)showListImage;

@end
