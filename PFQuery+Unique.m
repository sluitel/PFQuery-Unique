//
//  PFQuery+Unique.m
//  Selfie
//
//  Created by Subash Luitel on 2/20/15.
//  Copyright (c) 2015 Thinkboks LLC. All rights reserved.
//

#import "PFQuery+Unique.h"

@implementation PFQuery (Unique)

-(void)findUniqueObjectsWithKey:(NSString *)key completionBlock:(SLCompletionBlock)completion {
	NSMutableArray *filteredArray = [[NSMutableArray alloc] init];
	[self findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
		if (!error) {
			NSArray *filteredObjects = [self filterArray:[NSMutableArray arrayWithArray:objects] inArray:filteredArray withKey:key];
			completion(filteredObjects, nil);
		}
		else {
			completion(nil, error);
		}
	}];
}

-(NSArray *)filterArray:(NSMutableArray *)unfilteredArray inArray:(NSMutableArray *)filteredArray withKey:(NSString *)key {
	if (unfilteredArray.count > 0) {
		[filteredArray addObject:[unfilteredArray objectAtIndex:0]];
		NSPredicate *doesNotIncludeObject = [NSPredicate predicateWithFormat:@"%K != %@", key, [[unfilteredArray objectAtIndex:0] objectForKey:key]];
		unfilteredArray = [NSMutableArray arrayWithArray:[unfilteredArray filteredArrayUsingPredicate:doesNotIncludeObject]];
		[self filterArray:unfilteredArray inArray:filteredArray withKey:key];
	}
	return filteredArray;
}

@end
