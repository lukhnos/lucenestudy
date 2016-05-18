package org.lukhnos.lucenestudy;

/**
 * Copyright (c) 2015 Lukhnos Liu
 *
 * Licensed under the MIT License.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

import org.apache.lucene.queryparser.classic.ParseException;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import org.lukhnos.portmobile.file.Files;
import org.lukhnos.portmobile.file.Path;
import java.util.Arrays;

import static org.junit.Assert.*;

public class SearcherTest {
  Path temp;
  Searcher searcher;

  Document docs[] = {
      new Document("Test", 2000, 5, false, "It's important to test & fix", ""),
      new Document("Testing", 2000, 2, false, "", ""),
      new Document("Tested", 1999, 6, false, "", ""),
      new Document("Tester", 1984, 0, false, "", ""),
      new Document("Testcase", 1970, 10, false, "It's all about testing and testers.", "")
  };

  @Before
  public void setUp() throws Exception {
    temp = Files.createTempDirectory(SuggesterTest.class.getCanonicalName());

    Indexer indexer = new Indexer(temp.toString(), false);
    indexer.addDocuments(Arrays.asList(docs));
    indexer.close();

    searcher = new Searcher(temp.toString());
  }

  @After
  public void tearDown() throws Exception {
    searcher.close();
    Util.deletePath(temp);
  }

  @Test
  public void basicTest() throws Exception {
    SearchResult result;
    result = searcher.search("t*", 10);
    assertEquals(docs.length, result.totalHits);
    assertEquals(docs.length, result.documents.size());
  }

  @Test
  public void pagingTest() throws IOException, ParseException {
    SearchResult result;
    result = searcher.search("t*", docs.length);
    assertEquals(docs.length, result.totalHits);
    assertEquals(docs.length, result.documents.size());

    result = searcher.search("t*", 3);
    assertEquals(docs.length, result.totalHits);
    assertEquals(3, result.documents.size());
    assertTrue(result.hasMore());

    result = searcher.searchAfter(result, 3);
    assertEquals(docs.length, result.totalHits);
    assertEquals(2, result.documents.size());
    assertFalse(result.hasMore());
  }

  @Test
  public void sortTest() throws Exception {
    SearchResult result;
    result = searcher.search("t*", Searcher.SortBy.TITLE, 5);
    assertEquals("Test", result.documents.get(0).title);
    assertEquals("Testing", result.documents.get(4).title);

    result = searcher.search("t*", Searcher.SortBy.RELEVANCE, 5);
    assertEquals("Test", result.documents.get(0).title);

    result = searcher.search("t*", Searcher.SortBy.DOCUMENT_ORDER, 2);
    assertEquals("Testing", result.documents.get(1).title);

    result = searcher.search("t*", Searcher.SortBy.YEAR, 5);
    assertEquals(2000, result.documents.get(0).year);

    result = searcher.search("t*", Searcher.SortBy.RATING, 3);
    assertEquals(docs.length, result.totalHits);
    assertEquals(3, result.documents.size());
    assertEquals("Testcase", result.documents.get(0).title);
    assertTrue(result.hasMore());
  }

  @Test
  public void sortAndPagingTest() throws IOException, ParseException {
    SearchResult result;
    result = searcher.search("t*", Searcher.SortBy.RATING, 3);
    assertEquals(docs.length, result.totalHits);
    assertEquals(3, result.documents.size());
    assertEquals("Testcase", result.documents.get(0).title);
    assertTrue(result.hasMore());

    result = searcher.searchAfter(result, 2);
    assertEquals(docs.length, result.totalHits);
    assertEquals(2, result.documents.size());
    assertEquals("Testing", result.documents.get(0).title);
    assertFalse(result.hasMore());
  }

  @Test
  public void highlightingTest() throws Exception {
    SearchResult result;
    result = searcher.search("test", Searcher.SortBy.DOCUMENT_ORDER, 5);
    assertEquals("<B>Test</B>", result.getHighlightedTitle(result.documents.get(0)));
    assertEquals("It's important to <B>test</B> &amp; fix", result.getHighlightedReview(result.documents.get(0)));
  }
}
