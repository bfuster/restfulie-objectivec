/*
 * Restfulie.m
 * restfulie-objectivec
 *
 * Created by Bruno Fuster on 10/22/10.
 * 
 * Copyright (c) 2009 Caelum - www.caelum.com.br/opensource
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "Restfulie.h"
#import "DefaultRestClient.h"
#import "JsonMediaType.h"
#import "Request.h"

@implementation Restfulie

+(DefaultRestClient*)customWithTypes:(NSArray*)types andCollectionNames:(NSArray*)names {
									   
	DefaultRestClient *client = [[DefaultRestClient alloc] init];
		
	JsonMediaType *jsonMediaType = [[JsonMediaType alloc] init];
	[jsonMediaType withTypes:types andCollectionNames:names];
	
	[client setMediaTypes:[NSArray arrayWithObjects:jsonMediaType, nil]];
	[jsonMediaType release];
	
	return client;
}


@end
