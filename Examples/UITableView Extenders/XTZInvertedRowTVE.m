/*
Copyright 2021 happn
Copyright 2024 François Lamboley

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. */

#import "XTZInvertedRowTVE.h"



@implementation XTZInvertedRowTVE

- (BOOL)prepareObjectForExtender:(UITableView *)tableView
{
	if (![tableView isKindOfClass:UITableView.class] ||
		 ![super prepareObjectForExtender:tableView])
		return NO;
	
	return YES;
}

- (void)prepareObjectForRemovalOfExtender:(UITableView *)tableView
{
#pragma unused(tableView)
	NSParameterAssert([tableView isKindOfClass:UITableView.class]);
}

- (NSInteger)transformedSectionIndexFrom:(NSInteger)section withRow:(NSInteger)row inTableView:(UITableView *)tableView
{
#pragma unused(row)
	NSInteger total = 1;
	if ([tableView.dataSource respondsToSelector:@selector(numberOfSectionsInTableView:)])
		total = [tableView.dataSource numberOfSectionsInTableView:tableView];
	
	return total - 1 - section;
}

- (NSInteger)transformedRowIndexFrom:(NSInteger)row inSection:(NSInteger)section inTableView:(UITableView *)tableView
{
	return [tableView.dataSource tableView:tableView numberOfRowsInSection:section] - 1 - row;
}

@end
