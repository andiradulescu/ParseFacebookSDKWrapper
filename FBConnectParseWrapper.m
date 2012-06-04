//
//  FBConnectParseWrapper.m
//  ParseFacebookSDKWrapper
//
//  Created by Andrei Radulescu on 6/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FBConnectParseWrapper.h"

@implementation Facebook

- (id)initWithAppId:(NSString *)appId
        andDelegate:(id<FBSessionDelegate>)delegate {
    
    // Initialize facebook
    [PFFacebookUtils initializeWithApplicationId:appId];
    
    return (Facebook *)[PFFacebookUtils facebookWithDelegate:(NSObject<PF_FBSessionDelegate> *)self];
}

- (BOOL)handleOpenURL:(NSURL *)url {
    return [PFFacebookUtils handleOpenURL:url];
}


- (FBRequest*)requestWithParams:(NSMutableDictionary *)params
                    andDelegate:(id <FBRequestDelegate>)delegate {
    return (FBRequest*)[self requestWithParams:params andDelegate:delegate];
}

- (FBRequest*)requestWithMethodName:(NSString *)methodName
andParams:(NSMutableDictionary *)params
andHttpMethod:(NSString *)httpMethod
                           andDelegate:(id <FBRequestDelegate>)delegate {
    return (FBRequest*)[self requestWithMethodName:methodName andParams:params andHttpMethod:httpMethod andDelegate:delegate];
}

- (FBRequest*)requestWithGraphPath:(NSString *)graphPath
                       andDelegate:(id <FBRequestDelegate>)delegate {
    return (FBRequest*)[self requestWithGraphPath:graphPath andDelegate:delegate];
}

- (FBRequest*)requestWithGraphPath:(NSString *)graphPath
andParams:(NSMutableDictionary *)params
                       andDelegate:(id <FBRequestDelegate>)delegate {
    return (FBRequest*)[self requestWithGraphPath:graphPath andParams:params andDelegate:delegate];
}

- (FBRequest*)requestWithGraphPath:(NSString *)graphPath
                            andParams:(NSMutableDictionary *)params
                        andHttpMethod:(NSString *)httpMethod
                          andDelegate:(id <FBRequestDelegate>)delegate {
    return (FBRequest*)[self requestWithGraphPath:graphPath andParams:params andHttpMethod:httpMethod andDelegate:delegate];
}

@end