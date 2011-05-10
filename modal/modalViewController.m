//
//  modalViewController.m
//  modal
//
//  Created by Push on 11/05/07.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "modalViewController.h"
#import "anedota.h"


@implementation modalViewController

-(IBAction) abrirAnedota{
    
    anedota *am = [[anedota alloc] initWithNibName:@"anedota" bundle:nil];
    am.modalPresentationStyle = UIModalPresentationPageSheet;
    am.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:am animated:YES];
}

- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
