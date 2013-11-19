//
//  ProfileViewController.m
//  Getter
//
//  Created by 大坪裕樹 on 2013/10/22.
//  Copyright (c) 2013年 大坪裕樹. All rights reserved.
//

#import "MasterViewController.h"
#import "ProfileViewController.h"
#import "DetailViewController.h"
#import "GTMOAuthAuthentication.h"
#import "GTMOAuthViewControllerTouch.h"

@interface ProfileViewController ()

@end


@implementation ProfileViewController {
    // OAuth認証オブジェクト
    GTMOAuthAuthentication *auth_;
    // 表示中ツイート情報
    NSArray *timelineStatuses_;
}

//@synthesize textView;
@synthesize delegate;
@synthesize username;
@synthesize name;
@synthesize prof;
@synthesize tweets;
@synthesize following;
@synthesize followers;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad//:(NSIndexPath *)indexPath
{
    [super viewDidLoad];
    
    [_profileImageView.layer setBorderWidth:4.0f];
    [_profileImageView.layer setBorderColor:[[UIColor whiteColor] CGColor]];
    [_profileImageView.layer setShadowRadius:3.0];
    [_profileImageView.layer setShadowOpacity:0.5];
    [_profileImageView.layer setShadowOffset:CGSizeMake(1.0, 0.0)];
    [_profileImageView.layer setShadowColor:[[UIColor blackColor] CGColor]];
    //[self getInfo];
    
    _usernameLabel.text= [NSString stringWithFormat:@"@%@",username];
    _nameLabel.text= [NSString stringWithFormat:@"%@",name];
    _profileImageView.image = prof;
    _tweetsLable.text= [NSString stringWithFormat:@"%@",tweets];
    _followingLabel.text= [NSString stringWithFormat:@"%@",following];
    _followersLabel.text= [NSString stringWithFormat:@"%@",followers];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
- (void) getInfo
{
 
}
 */

@end
