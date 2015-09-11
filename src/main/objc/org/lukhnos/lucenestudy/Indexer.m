//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: src/main/java/org/lukhnos/lucenestudy/Indexer.java
//

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "java/io/IOException.h"
#include "java/lang/Exception.h"
#include "java/lang/Integer.h"
#include "java/util/List.h"
#include "org/apache/lucene/analysis/Analyzer.h"
#include "org/apache/lucene/analysis/en/EnglishAnalyzer.h"
#include "org/apache/lucene/document/Document.h"
#include "org/apache/lucene/document/Field.h"
#include "org/apache/lucene/document/IntField.h"
#include "org/apache/lucene/document/NumericDocValuesField.h"
#include "org/apache/lucene/document/SortedDocValuesField.h"
#include "org/apache/lucene/document/StringField.h"
#include "org/apache/lucene/document/TextField.h"
#include "org/apache/lucene/index/IndexWriter.h"
#include "org/apache/lucene/index/IndexWriterConfig.h"
#include "org/apache/lucene/index/IndexableField.h"
#include "org/apache/lucene/store/Directory.h"
#include "org/apache/lucene/store/FSDirectory.h"
#include "org/apache/lucene/util/BytesRef.h"
#include "org/lukhnos/lucenestudy/Document.h"
#include "org/lukhnos/lucenestudy/Indexer.h"
#include "org/lukhnos/portmobile/file/Path.h"
#include "org/lukhnos/portmobile/file/Paths.h"

NSString *OrgLukhnosLucenestudyIndexer_TITLE_FIELD_NAME_ = @"title";
NSString *OrgLukhnosLucenestudyIndexer_YEAR_FIELD_NAME_ = @"year";
NSString *OrgLukhnosLucenestudyIndexer_RATING_FIELD_NAME_ = @"rating";
NSString *OrgLukhnosLucenestudyIndexer_POSITIVE_FIELD_NAME_ = @"positive";
NSString *OrgLukhnosLucenestudyIndexer_REVIEW_FIELD_NAME_ = @"review";
NSString *OrgLukhnosLucenestudyIndexer_SOURCE_FIELD_NAME_ = @"source";
NSString *OrgLukhnosLucenestudyIndexer_INDEX_NAME_ = @"main";

@implementation OrgLukhnosLucenestudyIndexer

- (instancetype)initWithNSString:(NSString *)indexRoot {
  OrgLukhnosLucenestudyIndexer_initWithNSString_(self, indexRoot);
  return self;
}

- (instancetype)initWithNSString:(NSString *)indexRoot
                     withBoolean:(jboolean)appendIfExists {
  OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(self, indexRoot, appendIfExists);
  return self;
}

+ (OrgApacheLuceneAnalysisAnalyzer *)getAnalyzer {
  return OrgLukhnosLucenestudyIndexer_getAnalyzer();
}

+ (JavaLangInteger *)getIntegerWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)luceneDoc
                                                      withNSString:(NSString *)fieldName {
  return OrgLukhnosLucenestudyIndexer_getIntegerWithOrgApacheLuceneDocumentDocument_withNSString_(luceneDoc, fieldName);
}

+ (OrgLukhnosLucenestudyDocument *)fromLuceneDocumentWithOrgApacheLuceneDocumentDocument:(OrgApacheLuceneDocumentDocument *)luceneDoc {
  return OrgLukhnosLucenestudyIndexer_fromLuceneDocumentWithOrgApacheLuceneDocumentDocument_(luceneDoc);
}

+ (OrgLukhnosPortmobileFilePath *)getMainIndexPathWithOrgLukhnosPortmobileFilePath:(OrgLukhnosPortmobileFilePath *)indexRoot {
  return OrgLukhnosLucenestudyIndexer_getMainIndexPathWithOrgLukhnosPortmobileFilePath_(indexRoot);
}

- (void)close {
  [((OrgApacheLuceneIndexIndexWriter *) nil_chk(indexWriter_)) close];
}

- (void)addDocumentsWithJavaUtilList:(id<JavaUtilList>)docs {
  OrgApacheLuceneDocumentField *titleField = new_OrgApacheLuceneDocumentTextField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_(OrgLukhnosLucenestudyIndexer_TITLE_FIELD_NAME_, @"", JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, YES));
  OrgApacheLuceneDocumentField *titleDocsValueField = new_OrgApacheLuceneDocumentSortedDocValuesField_initWithNSString_withOrgApacheLuceneUtilBytesRef_(OrgLukhnosLucenestudyIndexer_TITLE_FIELD_NAME_, new_OrgApacheLuceneUtilBytesRef_initWithInt_(0));
  OrgApacheLuceneDocumentField *yearField = new_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_StoreEnum_(OrgLukhnosLucenestudyIndexer_YEAR_FIELD_NAME_, 0, JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, YES));
  OrgApacheLuceneDocumentField *yearDocsValueField = new_OrgApacheLuceneDocumentNumericDocValuesField_initWithNSString_withLong_(OrgLukhnosLucenestudyIndexer_YEAR_FIELD_NAME_, 0LL);
  OrgApacheLuceneDocumentField *ratingField = new_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_StoreEnum_(OrgLukhnosLucenestudyIndexer_RATING_FIELD_NAME_, 0, JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, YES));
  OrgApacheLuceneDocumentField *ratingDocsValueField = new_OrgApacheLuceneDocumentNumericDocValuesField_initWithNSString_withLong_(OrgLukhnosLucenestudyIndexer_RATING_FIELD_NAME_, 0LL);
  OrgApacheLuceneDocumentField *positiveField = new_OrgApacheLuceneDocumentIntField_initWithNSString_withInt_withOrgApacheLuceneDocumentField_StoreEnum_(OrgLukhnosLucenestudyIndexer_POSITIVE_FIELD_NAME_, 0, JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, YES));
  OrgApacheLuceneDocumentField *reviewField = new_OrgApacheLuceneDocumentTextField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_(OrgLukhnosLucenestudyIndexer_REVIEW_FIELD_NAME_, @"", JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, YES));
  OrgApacheLuceneDocumentField *sourceField = new_OrgApacheLuceneDocumentStringField_initWithNSString_withNSString_withOrgApacheLuceneDocumentField_StoreEnum_(OrgLukhnosLucenestudyIndexer_SOURCE_FIELD_NAME_, @"", JreLoadStatic(OrgApacheLuceneDocumentField_StoreEnum, YES));
  for (OrgLukhnosLucenestudyDocument * __strong doc in nil_chk(docs)) {
    OrgApacheLuceneDocumentDocument *luceneDoc = new_OrgApacheLuceneDocumentDocument_init();
    if (((OrgLukhnosLucenestudyDocument *) nil_chk(doc))->title_ != nil && ![doc->title_ isEmpty]) {
      [titleField setStringValueWithNSString:doc->title_];
      [luceneDoc addWithOrgApacheLuceneIndexIndexableField:titleField];
      [titleDocsValueField setBytesValueWithOrgApacheLuceneUtilBytesRef:new_OrgApacheLuceneUtilBytesRef_initWithJavaLangCharSequence_(doc->title_)];
      [luceneDoc addWithOrgApacheLuceneIndexIndexableField:titleDocsValueField];
    }
    [yearField setIntValueWithInt:doc->year_];
    [luceneDoc addWithOrgApacheLuceneIndexIndexableField:yearField];
    [yearDocsValueField setLongValueWithLong:(jlong) doc->year_];
    [luceneDoc addWithOrgApacheLuceneIndexIndexableField:yearDocsValueField];
    [ratingField setIntValueWithInt:doc->rating_];
    [luceneDoc addWithOrgApacheLuceneIndexIndexableField:ratingField];
    [ratingDocsValueField setLongValueWithLong:(jlong) doc->rating_];
    [luceneDoc addWithOrgApacheLuceneIndexIndexableField:ratingDocsValueField];
    [positiveField setIntValueWithInt:doc->positive_ ? 1 : 0];
    [luceneDoc addWithOrgApacheLuceneIndexIndexableField:positiveField];
    if (doc->review_ != nil && ![doc->review_ isEmpty]) {
      [reviewField setStringValueWithNSString:doc->review_];
      [luceneDoc addWithOrgApacheLuceneIndexIndexableField:reviewField];
    }
    if (doc->source_ != nil && ![doc->source_ isEmpty]) {
      [sourceField setStringValueWithNSString:doc->source_];
      [luceneDoc addWithOrgApacheLuceneIndexIndexableField:sourceField];
    }
    [((OrgApacheLuceneIndexIndexWriter *) nil_chk(indexWriter_)) addDocumentWithJavaLangIterable:luceneDoc];
  }
  [((OrgApacheLuceneIndexIndexWriter *) nil_chk(indexWriter_)) commit];
}

+ (const J2ObjcClassInfo *)__metadata {
  static const J2ObjcMethodInfo methods[] = {
    { "initWithNSString:", "Indexer", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "initWithNSString:withBoolean:", "Indexer", NULL, 0x1, "Ljava.io.IOException;", NULL },
    { "getAnalyzer", NULL, "Lorg.apache.lucene.analysis.Analyzer;", 0x9, NULL, NULL },
    { "getIntegerWithOrgApacheLuceneDocumentDocument:withNSString:", "getInteger", "Ljava.lang.Integer;", 0x8, NULL, NULL },
    { "fromLuceneDocumentWithOrgApacheLuceneDocumentDocument:", "fromLuceneDocument", "Lorg.lukhnos.lucenestudy.Document;", 0x8, NULL, NULL },
    { "getMainIndexPathWithOrgLukhnosPortmobileFilePath:", "getMainIndexPath", "Lorg.lukhnos.portmobile.file.Path;", 0x8, NULL, NULL },
    { "close", NULL, "V", 0x1, "Ljava.lang.Exception;", NULL },
    { "addDocumentsWithJavaUtilList:", "addDocuments", "V", 0x1, "Ljava.io.IOException;", NULL },
  };
  static const J2ObjcFieldInfo fields[] = {
    { "TITLE_FIELD_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudyIndexer_TITLE_FIELD_NAME_, NULL, .constantValue.asLong = 0 },
    { "YEAR_FIELD_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudyIndexer_YEAR_FIELD_NAME_, NULL, .constantValue.asLong = 0 },
    { "RATING_FIELD_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudyIndexer_RATING_FIELD_NAME_, NULL, .constantValue.asLong = 0 },
    { "POSITIVE_FIELD_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudyIndexer_POSITIVE_FIELD_NAME_, NULL, .constantValue.asLong = 0 },
    { "REVIEW_FIELD_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudyIndexer_REVIEW_FIELD_NAME_, NULL, .constantValue.asLong = 0 },
    { "SOURCE_FIELD_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudyIndexer_SOURCE_FIELD_NAME_, NULL, .constantValue.asLong = 0 },
    { "INDEX_NAME_", NULL, 0x18, "Ljava.lang.String;", &OrgLukhnosLucenestudyIndexer_INDEX_NAME_, NULL, .constantValue.asLong = 0 },
    { "indexWriter_", NULL, 0x10, "Lorg.apache.lucene.index.IndexWriter;", NULL, NULL, .constantValue.asLong = 0 },
  };
  static const J2ObjcClassInfo _OrgLukhnosLucenestudyIndexer = { 2, "Indexer", "org.lukhnos.lucenestudy", NULL, 0x1, 8, methods, 8, fields, 0, NULL, 0, NULL, NULL, NULL };
  return &_OrgLukhnosLucenestudyIndexer;
}

@end

void OrgLukhnosLucenestudyIndexer_initWithNSString_(OrgLukhnosLucenestudyIndexer *self, NSString *indexRoot) {
  (void) OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(self, indexRoot, false);
}

OrgLukhnosLucenestudyIndexer *new_OrgLukhnosLucenestudyIndexer_initWithNSString_(NSString *indexRoot) {
  OrgLukhnosLucenestudyIndexer *self = [OrgLukhnosLucenestudyIndexer alloc];
  OrgLukhnosLucenestudyIndexer_initWithNSString_(self, indexRoot);
  return self;
}

void OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(OrgLukhnosLucenestudyIndexer *self, NSString *indexRoot, jboolean appendIfExists) {
  (void) NSObject_init(self);
  OrgLukhnosPortmobileFilePath *indexRootPath = OrgLukhnosPortmobileFilePaths_getWithNSString_(indexRoot);
  OrgApacheLuceneAnalysisAnalyzer *analyzer = OrgLukhnosLucenestudyIndexer_getAnalyzer();
  OrgApacheLuceneStoreDirectory *mainIndexDir = OrgApacheLuceneStoreFSDirectory_openWithOrgLukhnosPortmobileFilePath_(OrgLukhnosLucenestudyIndexer_getMainIndexPathWithOrgLukhnosPortmobileFilePath_(indexRootPath));
  OrgApacheLuceneIndexIndexWriterConfig *mainIndexWriterConfig = new_OrgApacheLuceneIndexIndexWriterConfig_initWithOrgApacheLuceneAnalysisAnalyzer_(analyzer);
  if (appendIfExists) {
    (void) [mainIndexWriterConfig setOpenModeWithOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:JreLoadStatic(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, CREATE_OR_APPEND)];
  }
  else {
    (void) [mainIndexWriterConfig setOpenModeWithOrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum:JreLoadStatic(OrgApacheLuceneIndexIndexWriterConfig_OpenModeEnum, CREATE)];
  }
  self->indexWriter_ = new_OrgApacheLuceneIndexIndexWriter_initWithOrgApacheLuceneStoreDirectory_withOrgApacheLuceneIndexIndexWriterConfig_(mainIndexDir, mainIndexWriterConfig);
}

OrgLukhnosLucenestudyIndexer *new_OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(NSString *indexRoot, jboolean appendIfExists) {
  OrgLukhnosLucenestudyIndexer *self = [OrgLukhnosLucenestudyIndexer alloc];
  OrgLukhnosLucenestudyIndexer_initWithNSString_withBoolean_(self, indexRoot, appendIfExists);
  return self;
}

OrgApacheLuceneAnalysisAnalyzer *OrgLukhnosLucenestudyIndexer_getAnalyzer() {
  OrgLukhnosLucenestudyIndexer_initialize();
  return new_OrgApacheLuceneAnalysisEnEnglishAnalyzer_init();
}

JavaLangInteger *OrgLukhnosLucenestudyIndexer_getIntegerWithOrgApacheLuceneDocumentDocument_withNSString_(OrgApacheLuceneDocumentDocument *luceneDoc, NSString *fieldName) {
  OrgLukhnosLucenestudyIndexer_initialize();
  id<OrgApacheLuceneIndexIndexableField> field = [((OrgApacheLuceneDocumentDocument *) nil_chk(luceneDoc)) getFieldWithNSString:fieldName];
  if (field != nil) {
    NSNumber *number = [field numericValue];
    if (number != nil) {
      return JavaLangInteger_valueOfWithInt_([number intValue]);
    }
  }
  return nil;
}

OrgLukhnosLucenestudyDocument *OrgLukhnosLucenestudyIndexer_fromLuceneDocumentWithOrgApacheLuceneDocumentDocument_(OrgApacheLuceneDocumentDocument *luceneDoc) {
  OrgLukhnosLucenestudyIndexer_initialize();
  NSString *title = [((OrgApacheLuceneDocumentDocument *) nil_chk(luceneDoc)) getWithNSString:OrgLukhnosLucenestudyIndexer_TITLE_FIELD_NAME_];
  JavaLangInteger *number;
  jint year;
  number = OrgLukhnosLucenestudyIndexer_getIntegerWithOrgApacheLuceneDocumentDocument_withNSString_(luceneDoc, OrgLukhnosLucenestudyIndexer_YEAR_FIELD_NAME_);
  year = (number == nil) ? 0 : [number intValue];
  jint rating;
  number = OrgLukhnosLucenestudyIndexer_getIntegerWithOrgApacheLuceneDocumentDocument_withNSString_(luceneDoc, OrgLukhnosLucenestudyIndexer_RATING_FIELD_NAME_);
  rating = (number == nil) ? 0 : [number intValue];
  jboolean positive;
  number = OrgLukhnosLucenestudyIndexer_getIntegerWithOrgApacheLuceneDocumentDocument_withNSString_(luceneDoc, OrgLukhnosLucenestudyIndexer_POSITIVE_FIELD_NAME_);
  positive = (number == nil) ? false : ([number intValue] != 0);
  NSString *review = [luceneDoc getWithNSString:OrgLukhnosLucenestudyIndexer_REVIEW_FIELD_NAME_];
  NSString *source = [luceneDoc getWithNSString:OrgLukhnosLucenestudyIndexer_SOURCE_FIELD_NAME_];
  return new_OrgLukhnosLucenestudyDocument_initWithNSString_withInt_withInt_withBoolean_withNSString_withNSString_(title, year, rating, positive, review, source);
}

OrgLukhnosPortmobileFilePath *OrgLukhnosLucenestudyIndexer_getMainIndexPathWithOrgLukhnosPortmobileFilePath_(OrgLukhnosPortmobileFilePath *indexRoot) {
  OrgLukhnosLucenestudyIndexer_initialize();
  return [((OrgLukhnosPortmobileFilePath *) nil_chk(indexRoot)) resolveWithNSString:OrgLukhnosLucenestudyIndexer_INDEX_NAME_];
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(OrgLukhnosLucenestudyIndexer)
