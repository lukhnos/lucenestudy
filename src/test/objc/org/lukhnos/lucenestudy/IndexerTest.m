//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/test/java/org/lukhnos/lucenestudy/IndexerTest.java
//

#include "IOSClass.h"
#include "IOSObjectArray.h"
#include "J2ObjC_source.h"
#include "java/lang/annotation/Annotation.h"
#include "java/util/Arrays.h"
#include "java/util/List.h"
#include "org/junit/After.h"
#include "org/junit/Assert.h"
#include "org/junit/Before.h"
#include "org/junit/Test.h"
#include "org/lukhnos/lucenestudy/Document.h"
#include "org/lukhnos/lucenestudy/Indexer.h"
#include "org/lukhnos/lucenestudy/IndexerTest.h"
#include "org/lukhnos/lucenestudy/SearchResult.h"
#include "org/lukhnos/lucenestudy/Searcher.h"
#include "org/lukhnos/lucenestudy/SuggesterTest.h"
#include "org/lukhnos/lucenestudy/Util.h"
#include "org/lukhnos/portmobile/file/Files.h"
#include "org/lukhnos/portmobile/file/Path.h"

#if !__has_feature(objc_arc)
#error "org/lukhnos/lucenestudy/IndexerTest must be compiled with ARC (-fobjc-arc)"
#endif

__attribute__((unused)) static IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$0(void);

__attribute__((unused)) static IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$1(void);

__attribute__((unused)) static IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$2(void);

__attribute__((unused)) static IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$3(void);

@implementation OrgLukhnosLucenestudyIndexerTest

J2OBJC_IGNORE_DESIGNATED_BEGIN
- (instancetype)init {
  OrgLukhnosLucenestudyIndexerTest_init(self);
  return self;
}
J2OBJC_IGNORE_DESIGNATED_END

- (void)setUp {
  temp_ = OrgLukhnosPortmobileFileFiles_createTempDirectoryWithNSString_([OrgLukhnosLucenestudySuggesterTest_class_() getCanonicalName]);
}

- (void)tearDown {
  [((OrgLukhnosLucenestudySearcher *) nil_chk(searcher_)) close];
  OrgLukhnosLucenestudyUtil_deletePathWithOrgLukhnosPortmobileFilePath_(temp_);
}

- (void)appendDocumentTest {
  IOSObjectArray *docs1 = [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(@"computer", 2000, 5, false, @"", @""), create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(@"compute", 2000, 2, false, @"", @"") } count:2 type:OrgLukhnosLucenestudyDocument_class_()];
  IOSObjectArray *docs2 = [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(@"computing", 2000, 2, false, @"", @"") } count:1 type:OrgLukhnosLucenestudyDocument_class_()];
  OrgLukhnosLucenestudyIndexer *indexer = new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description], false);
  [indexer addDocumentsWithJavaUtilList:JavaUtilArrays_asListWithNSObjectArray_(docs1)];
  [indexer close];
  searcher_ = new_OrgLukhnosLucenestudySearcher_initWithNSString_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description]);
  OrgLukhnosLucenestudySearchResult *result;
  result = [searcher_ searchWithNSString:@"c*" withInt:10];
  OrgJunitAssert_assertEqualsWithLong_withLong_(docs1->size_, ((OrgLukhnosLucenestudySearchResult *) nil_chk(result))->totalHits_);
  [((OrgLukhnosLucenestudySearcher *) nil_chk(searcher_)) close];
  indexer = new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description], true);
  [indexer addDocumentsWithJavaUtilList:JavaUtilArrays_asListWithNSObjectArray_(docs2)];
  [indexer close];
  searcher_ = new_OrgLukhnosLucenestudySearcher_initWithNSString_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description]);
  result = [searcher_ searchWithNSString:@"c*" withInt:10];
  OrgJunitAssert_assertEqualsWithLong_withLong_(docs1->size_ + docs2->size_, ((OrgLukhnosLucenestudySearchResult *) nil_chk(result))->totalHits_);
  [((OrgLukhnosLucenestudySearcher *) nil_chk(searcher_)) close];
}

- (void)deleteDocumentTest {
  IOSObjectArray *docs = [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(@"apple", 2000, 5, false, @"", @""), create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(@"apricot", 2000, 5, false, @"", @""), create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(@"berry", 2000, 2, false, @"", @""), create_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(@"citrus", 2000, 2, false, @"", @"") } count:4 type:OrgLukhnosLucenestudyDocument_class_()];
  OrgLukhnosLucenestudyIndexer *indexer = new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description], false);
  [indexer addDocumentsWithJavaUtilList:JavaUtilArrays_asListWithNSObjectArray_(docs)];
  [indexer close];
  searcher_ = new_OrgLukhnosLucenestudySearcher_initWithNSString_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description]);
  OrgLukhnosLucenestudySearchResult *result;
  result = [searcher_ searchWithNSString:@"ap*" withInt:10];
  OrgJunitAssert_assertEqualsWithLong_withLong_(2, ((OrgLukhnosLucenestudySearchResult *) nil_chk(result))->totalHits_);
  [((OrgLukhnosLucenestudySearcher *) nil_chk(searcher_)) close];
  indexer = new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description], true);
  [indexer deleteDocumentsByQueryWithNSString:@"apple"];
  [indexer close];
  searcher_ = new_OrgLukhnosLucenestudySearcher_initWithNSString_([((OrgLukhnosPortmobileFilePath *) nil_chk(temp_)) description]);
  result = [searcher_ searchWithNSString:@"apple" withInt:10];
  OrgJunitAssert_assertEqualsWithLong_withLong_(0, ((OrgLukhnosLucenestudySearchResult *) nil_chk(result))->totalHits_);
  result = [((OrgLukhnosLucenestudySearcher *) nil_chk(searcher_)) searchWithNSString:@"ap*" withInt:10];
  OrgJunitAssert_assertEqualsWithLong_withLong_(1, ((OrgLukhnosLucenestudySearchResult *) nil_chk(result))->totalHits_);
  OrgJunitAssert_assertEqualsWithId_withId_(@"apricot", ((OrgLukhnosLucenestudyDocument *) nil_chk([((id<JavaUtilList>) nil_chk(result->documents_)) getWithInt:0]))->title_);
  [((OrgLukhnosLucenestudySearcher *) nil_chk(searcher_)) close];
}

+ (const J2ObjcClassInfo *)__metadata {
  static J2ObjcMethodInfo methods[] = {
    { NULL, NULL, 0x1, -1, -1, -1, -1, -1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 1, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 2, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 3, -1 },
    { NULL, "V", 0x1, -1, -1, 0, -1, 4, -1 },
  };
  #pragma clang diagnostic push
  #pragma clang diagnostic ignored "-Wobjc-multiple-method-names"
  #pragma clang diagnostic ignored "-Wundeclared-selector"
  methods[0].selector = @selector(init);
  methods[1].selector = @selector(setUp);
  methods[2].selector = @selector(tearDown);
  methods[3].selector = @selector(appendDocumentTest);
  methods[4].selector = @selector(deleteDocumentTest);
  #pragma clang diagnostic pop
  static const J2ObjcFieldInfo fields[] = {
    { "temp_", "LOrgLukhnosPortmobileFilePath;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
    { "searcher_", "LOrgLukhnosLucenestudySearcher;", .constantValue.asLong = 0, 0x0, -1, -1, -1, -1 },
  };
  static const void *ptrTable[] = { "LJavaLangException;", (void *)&OrgLukhnosLucenestudyIndexerTest__Annotations$0, (void *)&OrgLukhnosLucenestudyIndexerTest__Annotations$1, (void *)&OrgLukhnosLucenestudyIndexerTest__Annotations$2, (void *)&OrgLukhnosLucenestudyIndexerTest__Annotations$3 };
  static const J2ObjcClassInfo _OrgLukhnosLucenestudyIndexerTest = { "IndexerTest", "org.lukhnos.lucenestudy", ptrTable, methods, fields, 7, 0x1, 5, 2, -1, -1, -1, -1, -1 };
  return &_OrgLukhnosLucenestudyIndexerTest;
}

@end

void OrgLukhnosLucenestudyIndexerTest_init(OrgLukhnosLucenestudyIndexerTest *self) {
  NSObject_init(self);
}

OrgLukhnosLucenestudyIndexerTest *new_OrgLukhnosLucenestudyIndexerTest_init() {
  J2OBJC_NEW_IMPL(OrgLukhnosLucenestudyIndexerTest, init)
}

OrgLukhnosLucenestudyIndexerTest *create_OrgLukhnosLucenestudyIndexerTest_init() {
  J2OBJC_CREATE_IMPL(OrgLukhnosLucenestudyIndexerTest, init)
}

IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$0() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitBefore() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$1() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitAfter() } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$2() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

IOSObjectArray *OrgLukhnosLucenestudyIndexerTest__Annotations$3() {
  return [IOSObjectArray newArrayWithObjects:(id[]){ create_OrgJunitTest(OrgJunitTest_None_class_(), 0LL) } count:1 type:JavaLangAnnotationAnnotation_class_()];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosLucenestudyIndexerTest)