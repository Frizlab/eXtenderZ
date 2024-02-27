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

@import UIKit;



@protocol XTZLoadingMoreView <NSObject>

- (void)setModeLoading;
- (void)setModeNoMoreStories;

@end



@interface XTZLoadingMoreView : UIView <XTZLoadingMoreView> {
	BOOL modeIsLoading;
	
	CGFloat endingTopMargin;
	CGFloat leftMargin, rightMaring;
	
	UIImageView *imageViewEndOfList;
	UIActivityIndicatorView *activityIndicatorView;
}

+ (XTZLoadingMoreView *)loadingMoreView;

- (void)setEndingImage:(UIImage *)image;
- (void)setEndingTopMargin:(CGFloat)margin;

- (void)setLeftMargin:(CGFloat)margin;
- (void)setRightMargin:(CGFloat)margin;

- (void)setActivityIndicatorIsWhite:(BOOL)isWhite;

- (void)setModeLoading;
- (void)setModeNoMoreStories;

@end
