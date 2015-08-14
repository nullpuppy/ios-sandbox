//
//  FeedTableViewCell.h
//  ios-sandbox
//
//  Created by Dustin Knie on 8/13/15.
//  Copyright © 2015 dukn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FeedTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIView *cardView;

@property (weak, nonatomic) IBOutlet UIImageView *itemTypeIcon;
@property (weak, nonatomic) IBOutlet UITextView *itemTitle;
@property (weak, nonatomic) IBOutlet UITextView *itemText;
@property (weak, nonatomic) IBOutlet UILabel *timeSince;
@property (weak, nonatomic) IBOutlet UIImageView *seenByIcon;
@property (weak, nonatomic) IBOutlet UILabel *seenByCount;
@property (weak, nonatomic) IBOutlet UIImageView *itemImage;

@end
