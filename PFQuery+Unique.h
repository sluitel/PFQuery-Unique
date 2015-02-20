//
//  PFQuery+Unique.h
//  Selfie
//
//  Created by Subash Luitel on 2/20/15.
//  Copyright (c) 2015 Thinkboks LLC. All rights reserved.
//

#import <Parse/Parse.h>

typedef void(^SLCompletionBlock)(NSArray *objects, NSError *error);

@interface PFQuery (Unique)

-(void)findUniqueObjectsWithKey:(NSString *)key completionBlock:(SLCompletionBlock)completion;


@end
