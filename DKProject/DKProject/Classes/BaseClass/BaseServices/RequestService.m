//
//  RequestService.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "RequestService.h"

@implementation RequestService

@synthesize request = _request;

#pragma mark- *** Init ***

+ (instancetype)serviceWithRequest:(id<DKRequest>)request {
    return [[self alloc] initWithRequest:request];
}

- (instancetype)initWithRequest:(id<DKRequest>)request {
    self = [super init];
    if (self) {
        _request = request;
        self.ignoreCache = YES;
    }
    return self;
}

#pragma mark- *** Overridden ***

- (NSString *)baseUrl {
    NSString *baseUrl = @"";
    if ([_request respondsToSelector:@selector(baseUrl)]) {
        baseUrl = [_request baseUrl];
    }
    return baseUrl;
}

- (NSString *)requestUrl {
    NSString *requestUrl = @"";
    if ([_request respondsToSelector:@selector(requestUrl)]) {
        requestUrl = [_request requestUrl];
    }
    return requestUrl;
}

- (YTKRequestMethod)requestMethod {
    YTKRequestMethod method = YTKRequestMethodPOST;
    if ([_request respondsToSelector:@selector(requestMethod)]) {
        DKRequestMethod requetMethod = [_request requestMethod];
        switch (requetMethod) {
            case DKRequestMethodGET:
                method = YTKRequestMethodGET; break;
            case DKRequestMethodPOST:
                method = YTKRequestMethodPOST; break;
            case DKRequestMethodPUT:
                method = YTKRequestMethodPUT; break;
            case DKRequestMethodHEAD:
                method = YTKRequestMethodHEAD; break;
            case DKRequestMethodDELETE:
                method = YTKRequestMethodDELETE; break;
            case DKRequestMethodPATCH:
                method = YTKRequestMethodPATCH; break;
        }
    }
    return method;
}

- (NSTimeInterval)requestTimeoutInterval {
    if ([_request respondsToSelector:@selector(timeoutInterval)]) {
        return [_request timeoutInterval];
    }
    return 60.0;
}

- (id)requestArgument {
    if ([_request respondsToSelector:@selector(parameters)]) {
        return [_request parameters];
    }
    return nil;
}


@end
