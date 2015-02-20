# PFQuery-Unique

## Purpose
With this your query result will have distinct values for a particular key. This doesnot work for keys whose values are pointers or relations.

## Installation
Copy PFQuery+Unique.h and PFQuery+Unique.m files to your project.

## Usage
	PFQuery *query = [PFQuery queryWithClassName:@"YourClassName"];
	[query findUniqueObjectsWithKey:@"yourKey" completionBlock:^(NSArray *objects, NSError *error) {
		
	}];

## License
This is available under the MIT license. See the LICENSE.txt file for more info.