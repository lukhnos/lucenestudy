//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/org/lukhnos/lucenestudy/MinimalHTMLEncoder.java
//

#include "J2ObjC_header.h"

#pragma push_macro("INCLUDE_ALL_OrgLukhnosLucenestudyMinimalHTMLEncoder")
#ifdef RESTRICT_OrgLukhnosLucenestudyMinimalHTMLEncoder
#define INCLUDE_ALL_OrgLukhnosLucenestudyMinimalHTMLEncoder 0
#else
#define INCLUDE_ALL_OrgLukhnosLucenestudyMinimalHTMLEncoder 1
#endif
#undef RESTRICT_OrgLukhnosLucenestudyMinimalHTMLEncoder

#if !defined (OrgLukhnosLucenestudyMinimalHTMLEncoder_) && (INCLUDE_ALL_OrgLukhnosLucenestudyMinimalHTMLEncoder || defined(INCLUDE_OrgLukhnosLucenestudyMinimalHTMLEncoder))
#define OrgLukhnosLucenestudyMinimalHTMLEncoder_

#define RESTRICT_OrgApacheLuceneSearchHighlightEncoder 1
#define INCLUDE_OrgApacheLuceneSearchHighlightEncoder 1
#include "org/apache/lucene/search/highlight/Encoder.h"

@interface OrgLukhnosLucenestudyMinimalHTMLEncoder : NSObject < OrgApacheLuceneSearchHighlightEncoder > {
 @public
  jboolean newlineToBr_;
}

#pragma mark Public

- (instancetype)init;

- (NSString *)encodeTextWithNSString:(NSString *)plainText;

- (void)setNewlineToBrWithBoolean:(jboolean)newlineToBr;

@end

J2OBJC_EMPTY_STATIC_INIT(OrgLukhnosLucenestudyMinimalHTMLEncoder)

FOUNDATION_EXPORT void OrgLukhnosLucenestudyMinimalHTMLEncoder_init(OrgLukhnosLucenestudyMinimalHTMLEncoder *self);

FOUNDATION_EXPORT OrgLukhnosLucenestudyMinimalHTMLEncoder *new_OrgLukhnosLucenestudyMinimalHTMLEncoder_init(void) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT OrgLukhnosLucenestudyMinimalHTMLEncoder *create_OrgLukhnosLucenestudyMinimalHTMLEncoder_init(void);

J2OBJC_TYPE_LITERAL_HEADER(OrgLukhnosLucenestudyMinimalHTMLEncoder)

#endif

#pragma pop_macro("INCLUDE_ALL_OrgLukhnosLucenestudyMinimalHTMLEncoder")
