//
//  ACStoryboardEmbedSegueTemplate.m
//  Segway
//
//  Created by Arnaud Coomans on 02/02/14.
//  Copyright (c) 2014 Arnaud Coomans. All rights reserved.
//

#import "ACStoryboardEmbedSegueTemplate.h"
#import "ACStoryboardEmbedSegue.h"

static NSString * const ACStoryboardEmbedSegueTemplateDefaultSegueClassName = @"ACStoryboardEmbedSegue";

@implementation ACStoryboardEmbedSegueTemplate

- (instancetype)initWithIdentifier:(NSString*)identifier destinationViewControllerIdentifier:(NSString*)destinationViewControllerIdentifier containerView:(UIView*)containerView {
    self = [super initWithIdentifier:identifier destinationViewControllerIdentifier:destinationViewControllerIdentifier];
    if (self) {
        _containerView = containerView;
    }
    return self;
}

- (ACStoryboardSegue*)segueWithDestinationViewController:(UIViewController*)destinationViewController {
    ACStoryboardEmbedSegue *embedSegue = (ACStoryboardEmbedSegue*)[super segueWithDestinationViewController:destinationViewController];
    embedSegue.containerView = self.containerView;
    return embedSegue;
}

- (NSString*)defaultSegueClassName {
    return ACStoryboardEmbedSegueTemplateDefaultSegueClassName;
}

#pragma mark - NSCoding

- (void)encodeWithCoder:(NSCoder*)encoder {
    // TODO
}

- (id)initWithCoder:(NSCoder*)decoder {
    // TODO
    return nil;
}

@end