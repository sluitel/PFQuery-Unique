# PFQuery-Unique

## Purpose
With this your query result will have distinct values for a particular key. This doesnot work for keys whose values are pointers or relations.

## Installation
Just Copy PFQuery_Unique.h and PFQuery_Unique.m files to your project.

## Usage
	PFQuery *query = [PFQuery queryWithClassName:@"YourClassName"];
	[unDeletedImageQuery findUniqueObjectsWithKey:@"yourKey" completionBlock:^(NSArray *objects, NSError *error) {
		
	}];