//
//  anedota.m
//  modal
//
//  Created by Push on 11/05/07.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "anedota.h"
#import "Info.h"


@implementation anedota

-(IBAction) voltar{
    
    [self dismissModalViewControllerAnimated:YES];
    
//    anedota *am = [[anedota alloc] initWithNibName:@"anedota" bundle:nil];
//    am.modalPresentationStyle = UIModalPresentationPageSheet;
//    am.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
//    [self presentModalViewController:am animated:YES];
    
    
}

-(IBAction) info{
    
    Info *am = [[Info alloc] initWithNibName:@"Info" bundle:nil];
    am.modalPresentationStyle = UIModalPresentationPageSheet;
    am.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:am animated:YES];
    
}

-(IBAction) random{
    
    //NSArray *resultsRandomAlentejanos = [database executeQuery:@"SELECT * FROM Alentejanos,Loiras ORDER BY RANDOM() LIMIT 1;"];
    
    NSArray *resultsRandomAll = [database executeQuery:
                                 @"SELECT texto FROM (SELECT * FROM Alentejanos UNION ALL SELECT * FROM Loiras) ORDER BY RANDOM() LIMIT 1;"];
    
    
    for (NSDictionary *row in resultsRandomAll) {        

        //converte em string no formato UTF-8
        NSString *UTF8String;
        UTF8String = [row valueForKey:@"texto"];
        
        //atribui ao textview object e descodifica a string de UTF-8
        NSString *ISOString = [NSString stringWithUTF8String:[UTF8String cStringUsingEncoding:[NSString defaultCStringEncoding]]];
        textoAnedota.text = ISOString;
        
    }

}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
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

- (void)viewDidLoad
{
    
    //COLOCAR AQUI O CODIGO DA BASE DE DADOS! os sql's
    NSString *myDB =[[[NSBundle mainBundle] resourcePath ]
                     stringByAppendingPathComponent:@"anedotas.sql"];
    
    database = [[Sqlite alloc] init];
    [database open:myDB];
    
    
    NSArray *resulsRandomAll = [database executeQuery:
                                @"SELECT texto FROM (SELECT * FROM Alentejanos UNION ALL SELECT * FROM Loiras) ORDER BY RANDOM() LIMIT 1;"];
    
    
    for (NSDictionary *row in resulsRandomAll) {
        
        //converte em string no formato UTF-8
        NSString *UTF8String;
        UTF8String = [row valueForKey:@"texto"];
        
        //atribui ao textview object e descodifica a string de UTF-8
        NSString *ISOString = [NSString stringWithUTF8String:[UTF8String cStringUsingEncoding:[NSString defaultCStringEncoding]]];
        textoAnedota.text = ISOString;
 
    }
    
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload

{
    [database close];
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
