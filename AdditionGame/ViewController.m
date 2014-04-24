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
- (void) generate;
@end

@implementation ViewController

@synthesize label;
@synthesize answer;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self generate];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    [self setLabel:nil];
    [self setAnswer:nil];
}

- (IBAction)submit:(id)sender {
    NSLog(@"You clicked submit");
    int num = [answer.text intValue];
    if (num == label.tag) {
        NSLog(@"CORRECT");
        [self generate];
    } else {
        NSLog(@"WRONG! TRY AGAIN");
    }
}

- (void) generate
{
    int a = 1 + arc4random()%9;
    int b = 1 + arc4random()%9;
    int sum = a + b;
    label.text = [NSString stringWithFormat:@"%d + %d = ",a,b];
    label.tag = sum;
}

@end
