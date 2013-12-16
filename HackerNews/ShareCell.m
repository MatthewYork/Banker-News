//
//  ShareCell.m
//  HackerNews
//
//  Created by Ben Gordon on 1/19/13.
//  Copyright (c) 2013 Benjamin Gordon. All rights reserved.
//

#import "ShareCell.h"

@implementation ShareCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

#pragma mark - Set Content
- (void)setActionsForDelegate:(id)del {
    self.delegate = del;
    [self.twitterButton addTarget:self action:@selector(setActionForTwitter) forControlEvents:UIControlEventTouchUpInside];
    [self.fbButton addTarget:self action:@selector(setActionForFacebook) forControlEvents:UIControlEventTouchUpInside];
    [self.emailButton addTarget:self action:@selector(setActionForEmail) forControlEvents:UIControlEventTouchUpInside];
}


#pragma mark - Actions
- (void)setActionForTwitter {
    if ([self.delegate respondsToSelector:@selector(didClickShareToTwitter)]) {
        [self.delegate didClickShareToTwitter];
    }
}

- (void)setActionForFacebook {
    if ([self.delegate respondsToSelector:@selector(didClickShareToFacebook)]) {
        [self.delegate didClickShareToFacebook];
    }
}

- (void)setActionForEmail {
    if ([self.delegate respondsToSelector:@selector(didClickShareToEmail)]) {
        [self.delegate didClickShareToEmail];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)didSelectBitcoinAddress:(id)sender {
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = @"15JLNn1nmjJWFV9Cm2n7NBQ5WvaHopbUY6";
    
    [[[UIAlertView alloc] initWithTitle:@"Thank You!" message:@"Our Bitcoin address has been copied to your clipboard." delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil] show];
}

@end
