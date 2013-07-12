//
//  BirdsDetailViewController.h
//  BirdWatching
//
//  Created by Tit on 2013/07/10.
//  Copyright (c) 2013年 Tit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BirdsDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
