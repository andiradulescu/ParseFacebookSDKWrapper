//
//  FBConnectParseWrapper.h
//  ParseFacebookSDKWrapper
//
//  Created by Andrei Radulescu on 6/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Parse/Parse.h>

@interface FBRequest : PF_FBRequest
@end

@interface FBDialog : PF_FBDialog
@end

// delegates
@protocol FBRequestDelegate <PF_FBRequestDelegate>
@end

@protocol FBSessionDelegate <PF_FBSessionDelegate>
@end

@protocol FBDialogDelegate <PF_FBDialogDelegate>
@end

@interface Facebook : PF_Facebook

- (FBRequest*)requestWithParams:(NSMutableDictionary *)params
                    andDelegate:(id <FBRequestDelegate>)delegate;

- (FBRequest*)requestWithMethodName:(NSString *)methodName
                          andParams:(NSMutableDictionary *)params
                      andHttpMethod:(NSString *)httpMethod
                        andDelegate:(id <FBRequestDelegate>)delegate;

- (FBRequest*)requestWithGraphPath:(NSString *)graphPath
                       andDelegate:(id <FBRequestDelegate>)delegate;

- (FBRequest*)requestWithGraphPath:(NSString *)graphPath
                         andParams:(NSMutableDictionary *)params
                       andDelegate:(id <FBRequestDelegate>)delegate;

- (FBRequest*)requestWithGraphPath:(NSString *)graphPath
                         andParams:(NSMutableDictionary *)params
                     andHttpMethod:(NSString *)httpMethod
                       andDelegate:(id <FBRequestDelegate>)delegate;

@end