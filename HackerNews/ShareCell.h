//
//  ShareCell.h
//  HackerNews
//
//  Created by Ben Gordon on 1/19/13.
//  Copyright (c) 2013 Benjamin Gordon. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kCellShareHeight 102

@protocol NavShareCellDelegate <NSObject>

- (void)didClickShareToTwitter;
- (void)didClickShareToFacebook;
- (void)didClickShareToEmail;

@end

@interface ShareCell : UITableViewCell

@property (retain, nonatomic) IBOutlet UIButton *fbButton;
@property (retain, nonatomic) IBOutlet UIButton *twitterButton;
@property (retain, nonatomic) IBOutlet UIButton *emailButton;
@property (retain, nonatomic) IBOutlet UIImageView *checkImage;
@property (weak) id <NavShareCellDelegate> delegate;


- (void)setActionsForDelegate:(id)del;

@end
