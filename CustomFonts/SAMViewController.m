//
//  SAMViewController.m
//  CustomFonts
//
//  Created by Milan Kumar Panchal on 04/03/14.
//  Copyright (c) 2014 Pantech. All rights reserved.
//

#import "SAMViewController.h"

@interface SAMViewController ()

@end

@implementation SAMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self listAllFornts];
    
    self.label.font = [UIFont fontWithName:@"cinnamoncake" size:12.00f];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)listAllFornts {
    
    for (NSString* family in [UIFont familyNames]) {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family]) {
            NSLog(@"  %@", name);
        }
    }
}
@end
