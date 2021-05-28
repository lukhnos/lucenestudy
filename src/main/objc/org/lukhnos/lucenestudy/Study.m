//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/org/lukhnos/lucenestudy/Study.java
//

#include "IOSObjectArray.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/File.h"
#include "java/io/FileInputStream.h"
#include "java/io/InputStream.h"
#include "java/io/PrintStream.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/lang/System.h"
#include "java/lang/Throwable.h"
#include "java/util/ArrayList.h"
#include "java/util/Collections.h"
#include "java/util/List.h"
#include "org/json/JSONArray.h"
#include "org/json/JSONObject.h"
#include "org/lukhnos/lucenestudy/Document.h"
#include "org/lukhnos/lucenestudy/Indexer.h"
#include "org/lukhnos/lucenestudy/SearchResult.h"
#include "org/lukhnos/lucenestudy/Searcher.h"
#include "org/lukhnos/lucenestudy/Study.h"
#include "org/lukhnos/lucenestudy/Suggester.h"

#if !__has_feature(objc_arc)
#error "org/lukhnos/lucenestudy/Study must be compiled with ARC (-fobjc-arc)"
#endif

@implementation OrgLukhnosLucenestudyStudy

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgLukhnosLucenestudyStudy_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

+ (void)mainWithNSStringArray:(IOSObjectArray *)args {
  OrgLukhnosLucenestudyStudy_mainWithNSStringArray_(args);
}

+ (void)showHelpAndExit {
  OrgLukhnosLucenestudyStudy_showHelpAndExit();
}

+ (void)indexWithNSString:(NSString *)sourcePath
             withNSString:(NSString *)indexPath {
  OrgLukhnosLucenestudyStudy_indexWithNSString_withNSString_(sourcePath, indexPath);
}

+ (jint)importDataWithJavaIoInputStream:(JavaIoInputStream *)stream
                           withNSString:(NSString *)indexPath
                            withBoolean:(jboolean)withSuggestion {
  return OrgLukhnosLucenestudyStudy_importDataWithJavaIoInputStream_withNSString_withBoolean_(stream, indexPath, withSuggestion);
}

+ (void)searchWithNSString:(NSString *)indexPath
              withNSString:(NSString *)query {
  OrgLukhnosLucenestudyStudy_searchWithNSString_withNSString_(indexPath, query);
}

+ (void)delete__WithNSString:(NSString *)indexPath
                withNSString:(NSString *)query {
  OrgLukhnosLucenestudyStudy_delete__WithNSString_withNSString_(indexPath, query);
}

+ (void)suggestWithNSString:(NSString *)indexPath
               withNSString:(NSString *)query {
  OrgLukhnosLucenestudyStudy_suggestWithNSString_withNSString_(indexPath, query);
}

+ (void)addWithNSString:(NSString *)indexPath
           withNSString:(NSString *)title
           withNSString:(NSString *)year
           withNSString:(NSString *)rating
           withNSString:(NSString *)positive
           withNSString:(NSString *)review
           withNSString:(NSString *)source {
  OrgLukhnosLucenestudyStudy_addWithNSString_withNSString_withNSString_withNSString_withNSString_withNSString_withNSString_(indexPath, title, year, rating, positive, review, source);
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x9, 0, 1, 2, -1, -1, -1 },
    { NULL, "V", 0x8, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x8, 3, 4, -1, -1, -1, -1 },
    { NULL, "I", 0x9, 5, 6, 2, -1, -1, -1 },
    { NULL, "V", 0x8, 7, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x8, 8, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x8, 9, 4, 2, -1, -1, -1 },
    { NULL, "V", 0x8, 10, 11, 2, -1, -1, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(mainWithNSStringArray:);
  methods[2].selector = @selector(showHelpAndExit);
  methods[3].selector = @selector(indexWithNSString:withNSString:);
  methods[4].selector = @selector(importDataWithJavaIoInputStream:withNSString:withBoolean:);
  methods[5].selector = @selector(searchWithNSString:withNSString:);
  methods[6].selector = @selector(delete__WithNSString:withNSString:);
  methods[7].selector = @selector(suggestWithNSString:withNSString:);
  methods[8].selector = @selector(addWithNSString:withNSString:withNSString:withNSString:withNSString:withNSString:withNSString:);
  #pragma clang diagnostic pop
  static const void *ptrTable[] = { "main", "[LNSString;", "LJavaLangException;", "index", "LNSString;LNSString;", "importData", "LJavaIoInputStream;LNSString;Z", "search", "delete", "suggest", "add", "LNSString;LNSString;LNSString;LNSString;LNSString;LNSString;LNSString;" };
  static const J2ObjcClassInfo _OrgLukhnosLucenestudyStudy = { "Study", "org.lukhnos.lucenestudy", ptrTable, methods, NULL, 7, 0x1, 9, 0, -1, -1, -1, -1, -1 };
  return &_OrgLukhnosLucenestudyStudy;
}

@end

void OrgLukhnosLucenestudyStudy_init(OrgLukhnosLucenestudyStudy *self) {
  NSObject_init(self);
}

OrgLukhnosLucenestudyStudy *new_OrgLukhnosLucenestudyStudy_init() {
  J2OBJC_NEW_IMPL(OrgLukhnosLucenestudyStudy, init)
}

OrgLukhnosLucenestudyStudy *create_OrgLukhnosLucenestudyStudy_init() {
  J2OBJC_CREATE_IMPL(OrgLukhnosLucenestudyStudy, init)
}

void OrgLukhnosLucenestudyStudy_mainWithNSStringArray_(IOSObjectArray *args) {
  OrgLukhnosLucenestudyStudy_initialize();
  if (((IOSObjectArray *) nil_chk(args))->size_ < 3) {
    OrgLukhnosLucenestudyStudy_showHelpAndExit();
    return;
  }
  if ([((NSString *) nil_chk(IOSObjectArray_Get(args, 0))) java_equalsIgnoreCase:@"index"]) {
    OrgLukhnosLucenestudyStudy_indexWithNSString_withNSString_(IOSObjectArray_Get(args, 1), IOSObjectArray_Get(args, 2));
  }
  else if ([((NSString *) nil_chk(IOSObjectArray_Get(args, 0))) java_equalsIgnoreCase:@"search"]) {
    OrgLukhnosLucenestudyStudy_searchWithNSString_withNSString_(IOSObjectArray_Get(args, 1), IOSObjectArray_Get(args, 2));
  }
  else if ([((NSString *) nil_chk(IOSObjectArray_Get(args, 0))) java_equalsIgnoreCase:@"suggest"]) {
    OrgLukhnosLucenestudyStudy_suggestWithNSString_withNSString_(IOSObjectArray_Get(args, 1), IOSObjectArray_Get(args, 2));
  }
  else if ([((NSString *) nil_chk(IOSObjectArray_Get(args, 0))) java_equalsIgnoreCase:@"add"]) {
    if (args->size_ < 8) {
      OrgLukhnosLucenestudyStudy_showHelpAndExit();
    }
    OrgLukhnosLucenestudyStudy_addWithNSString_withNSString_withNSString_withNSString_withNSString_withNSString_withNSString_(IOSObjectArray_Get(args, 1), IOSObjectArray_Get(args, 2), IOSObjectArray_Get(args, 3), IOSObjectArray_Get(args, 4), IOSObjectArray_Get(args, 5), IOSObjectArray_Get(args, 6), IOSObjectArray_Get(args, 7));
  }
  else if ([((NSString *) nil_chk(IOSObjectArray_Get(args, 0))) java_equalsIgnoreCase:@"delete"]) {
    OrgLukhnosLucenestudyStudy_delete__WithNSString_withNSString_(IOSObjectArray_Get(args, 1), IOSObjectArray_Get(args, 2));
  }
  else {
    OrgLukhnosLucenestudyStudy_showHelpAndExit();
  }
}

void OrgLukhnosLucenestudyStudy_showHelpAndExit() {
  OrgLukhnosLucenestudyStudy_initialize();
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"Usage: Study [index|search|suggest] arguments..."];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"    index <source JSON> <index path>"];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"    search <index path> <query>"];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"    suggest <index path> <keyword(s)>"];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"    add <index path> <title> <year> <rating> <positive> <review> <source>"];
  [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:@"    delete <index path> <query>"];
  JavaLangSystem_exitWithInt_(1);
}

void OrgLukhnosLucenestudyStudy_indexWithNSString_withNSString_(NSString *sourcePath, NSString *indexPath) {
  OrgLukhnosLucenestudyStudy_initialize();
  JavaIoFile *dataFile = new_JavaIoFile_initWithNSString_(sourcePath);
  if (![dataFile exists]) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, err))) printlnWithNSString:JreStrcat("$$", @"JSON source not found: ", sourcePath)];
    JavaLangSystem_exitWithInt_(1);
  }
  if ([dataFile length] > JavaLangInteger_MAX_VALUE) {
    JavaLangSystem_exitWithInt_(1);
  }
  @try {
    JavaIoFileInputStream *stream = new_JavaIoFileInputStream_initWithNSString_(sourcePath);
    JavaLangThrowable *__primaryException1 = nil;
    @try {
      OrgLukhnosLucenestudyStudy_importDataWithJavaIoInputStream_withNSString_withBoolean_(stream, indexPath, true);
    }
    @catch (JavaLangThrowable *e) {
      __primaryException1 = e;
      @throw e;
    }
    @finally {
      if (stream != nil) {
        if (__primaryException1 != nil) {
          @try {
            [stream close];
          }
          @catch (JavaLangThrowable *e) {
            [__primaryException1 addSuppressedWithJavaLangThrowable:e];
          }
        }
        else {
          [stream close];
        }
      }
    }
  }
  @catch (JavaLangException *e) {
    [e printStackTrace];
    JavaLangSystem_exitWithInt_(1);
  }
}

jint OrgLukhnosLucenestudyStudy_importDataWithJavaIoInputStream_withNSString_withBoolean_(JavaIoInputStream *stream, NSString *indexPath, jboolean withSuggestion) {
  OrgLukhnosLucenestudyStudy_initialize();
  JavaIoByteArrayOutputStream *baos = new_JavaIoByteArrayOutputStream_init();
  jint bufSize = 4096;
  IOSByteArray *buf = [IOSByteArray newArrayWithLength:bufSize];
  jint read;
  while ((read = [((JavaIoInputStream *) nil_chk(stream)) readWithByteArray:buf]) > 0) {
    [baos writeWithByteArray:buf withInt:0 withInt:read];
  }
  NSString *dataStr = [NSString java_stringWithBytes:[baos toByteArray] charsetName:@"UTF-8"];
  id<JavaUtilList> docs = new_JavaUtilArrayList_init();
  OrgJsonJSONArray *jsonArray = new_OrgJsonJSONArray_initWithNSString_(dataStr);
  for (jint i = 0, len = [jsonArray length]; i < len; i++) {
    OrgJsonJSONObject *entry_ = [jsonArray getJSONObjectWithInt:i];
    NSString *title = [((OrgJsonJSONObject *) nil_chk(entry_)) getStringWithNSString:@"title"];
    jint year = [entry_ getIntWithNSString:@"year"];
    jint rating = [entry_ getIntWithNSString:@"rating"];
    jboolean positive = [entry_ getBooleanWithNSString:@"positive"];
    NSString *review = [entry_ getStringWithNSString:@"review"];
    NSString *source = [entry_ getStringWithNSString:@"source"];
    OrgLukhnosLucenestudyDocument *doc = new_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(title, year, rating, positive, review, source);
    [docs addWithId:doc];
  }
  OrgLukhnosLucenestudyIndexer *indexer = new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(indexPath, false);
  [indexer addDocumentsWithJavaUtilList:docs];
  [indexer close];
  if (withSuggestion) {
    OrgLukhnosLucenestudySuggester_rebuildWithNSString_(indexPath);
  }
  return [docs size];
}

void OrgLukhnosLucenestudyStudy_searchWithNSString_withNSString_(NSString *indexPath, NSString *query) {
  OrgLukhnosLucenestudyStudy_initialize();
  OrgLukhnosLucenestudySearcher *searcher = new_OrgLukhnosLucenestudySearcher_initWithNSString_(indexPath);
  OrgLukhnosLucenestudySearchResult *result = [searcher searchWithNSString:query withOrgLukhnosLucenestudySearcher_SortBy:nil withInt:10];
  for (OrgLukhnosLucenestudyDocument * __strong doc in nil_chk(((OrgLukhnosLucenestudySearchResult *) nil_chk(result))->documents_)) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"title   : ", [result getHighlightedTitleWithOrgLukhnosLucenestudyDocument:doc])];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"year    : ", ((OrgLukhnosLucenestudyDocument *) nil_chk(doc))->year_)];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$I", @"rating  : ", doc->rating_)];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$Z", @"positive: ", doc->positive_)];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"review  : ", [result getHighlightedReviewWithOrgLukhnosLucenestudyDocument:doc])];
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) println];
  }
  [searcher close];
}

void OrgLukhnosLucenestudyStudy_delete__WithNSString_withNSString_(NSString *indexPath, NSString *query) {
  OrgLukhnosLucenestudyStudy_initialize();
  OrgLukhnosLucenestudyIndexer *indexer = new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(indexPath, true);
  [indexer deleteDocumentsByQueryWithNSString:query];
  [indexer close];
  OrgLukhnosLucenestudySuggester_rebuildWithNSString_(indexPath);
}

void OrgLukhnosLucenestudyStudy_suggestWithNSString_withNSString_(NSString *indexPath, NSString *query) {
  OrgLukhnosLucenestudyStudy_initialize();
  OrgLukhnosLucenestudySuggester *suggester = new_OrgLukhnosLucenestudySuggester_initWithNSString_(indexPath);
  id<JavaUtilList> suggestions = [suggester suggestWithNSString:query];
  for (NSString * __strong text in nil_chk(suggestions)) {
    [((JavaIoPrintStream *) nil_chk(JreLoadStatic(JavaLangSystem, out))) printlnWithNSString:JreStrcat("$$", @"Suggestion: ", text)];
  }
  [suggester close];
}

void OrgLukhnosLucenestudyStudy_addWithNSString_withNSString_withNSString_withNSString_withNSString_withNSString_withNSString_(NSString *indexPath, NSString *title, NSString *year, NSString *rating, NSString *positive, NSString *review, NSString *source) {
  OrgLukhnosLucenestudyStudy_initialize();
  OrgLukhnosLucenestudyDocument *doc = new_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(title, JavaLangInteger_parseIntWithNSString_(year), JavaLangInteger_parseIntWithNSString_(year), [((NSString *) nil_chk(rating)) java_equalsIgnoreCase:@"true"], review, source);
  OrgLukhnosLucenestudyIndexer *indexer = new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(indexPath, true);
  [indexer addDocumentsWithJavaUtilList:JavaUtilCollections_singletonListWithId_(doc)];
  [indexer close];
  OrgLukhnosLucenestudySuggester_rebuildWithNSString_(indexPath);
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosLucenestudyStudy)
