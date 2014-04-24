//
//  ViewController.m
//  AdditionGame
//
//  Created by Abhijit Joshi on 4/24/14.
//  Copyright (c) 2014 XYZ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (retain, nonatomic) IBOutlet UILabel *label;
@property (retain, nonatomic) IBOutlet UITextField *answer;
- (IBAction)submit:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [self setLabel:nil];
    [self setAnswer:nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submit:(id)sender {
    NSLog(@"You clicked submit");
}

- (void) generate
{
    int a = 1 + arc4random()%9;
    int b = 1 + arc4random()%9;
    int sum = a + b;
    _label.text = [NSString stringWithFormat:@"%d + %d = ",a,b];
    _label.tag = sum;
}

@end
