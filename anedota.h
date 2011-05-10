//
//  anedota.h
//  modal
//
//  Created by Push on 11/05/07.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "sqlite.h"

@interface anedota : UIViewController {
    
    Sqlite *database;   
    IBOutlet UITextView *textoAnedota;
    IBOutlet UILabel *tipoAnedota;
    IBOutlet UIButton *randomAnedota;
    IBOutlet UIButton *infoScreen;

}

@property (nonatomic, retain) IBOutlet UITextView *textoAnedota;
@property (nonatomic, retain) IBOutlet UILabel *tipoAnedota;
@property (nonatomic, retain) IBOutlet UIButton *randomAnedota;
@property (nonatomic, retain) IBOutlet UIButton * infoScreen;

-(IBAction) info;
-(IBAction) voltar;
-(IBAction) random;


@end
