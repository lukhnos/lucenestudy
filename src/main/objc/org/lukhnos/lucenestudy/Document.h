//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/org/lukhnos/lucenestudy/Document.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosLucenestudyDocument")
#ifdef RESTRICT_OrgLukhnosLucenestudyDocument
#define INCLUDE_ALL_OrgLukhnosLucenestudyDocument 0
#else
#define INCLUDE_ALL_OrgLukhnosLucenestudyDocument 1
#endif
#undef RESTRICT_OrgLukhnosLucenestudyDocument

#if !defined (OrgLukhnosLucenestudyDocument_) && (INCLUDE_ALL_OrgLukhnosLucenestudyDocument || defined(INCLUDE_OrgLukhnosLucenestudyDocument))
#define OrgLukhnosLucenestudyDocument_

@interface OrgLukhnosLucenestudyDocument : NSObject {
 @public
  NSString *title_;
  jint year_;
  jint rating_;
  jboolean positive_;
  NSString *review_;
  NSString *source_;
}

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)title
                         withInt:(jint)year
                         withInt:(jint)rating
                     withBoolean:(jboolean)positive
                    withNSString:(NSString *)review
                    withNSString:(NSString *)source;

- (NSString *)description;

// Disallowed inherited constructors, do not use.

- (instancetype)init NS_UNAVAILABLE;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosLucenestudyDocument)

J2OBJC_FIELD_SETTER(OrgLukhnosLucenestudyDocument, title_, NSString *)
J2OBJC_FIELD_SETTER(OrgLukhnosLucenestudyDocument, review_, NSString *)
J2OBJC_FIELD_SETTER(OrgLukhnosLucenestudyDocument, source_, NSString *)

FOUNDATION_EXPORT void OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(OrgLukhnosLucenestudyDocument *self, NSString *title, jint year, jint rating, jboolean positive, NSString *review, NSString *source);

FOUNDATION_EXPORT OrgLukhnosLucenestudyDocument *new_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(NSString *title, jint year, jint rating, jboolean positive, NSString *review, NSString *source) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgLukhnosLucenestudyDocument *create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(NSString *title, jint year, jint rating, jboolean positive, NSString *review, NSString *source);

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosLucenestudyDocument)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgLukhnosLucenestudyDocument")
