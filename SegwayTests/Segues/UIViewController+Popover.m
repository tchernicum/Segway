//
//  UIViewController+Popover.m
//  Segway
//
//  Created by Arnaud Coomans on 02/02/14.
//  Copyright (c) 2014 Arnaud Coomans. All rights reserved.
//

#import "UIViewController+Popover.h"
#import <objc/runtime.h>

static char const * const UIViewControllerPopoverViewControllerKey = "UIViewControllerPopoverViewControllerKey";

@implementation UIViewController (Popover)

- (UIPopoverController*)popoverViewController {
    return objc_getAssociatedObject(self, UIViewControllerPopoverViewControllerKey);
}

- (void)setPopoverViewController:(UIPopoverController*)popoverViewController {
    objc_setAssociatedObject(self, UIViewControllerPopoverViewControllerKey, popoverViewController, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
