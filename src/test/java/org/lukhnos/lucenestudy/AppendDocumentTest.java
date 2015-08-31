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

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import org.lukhnos.portmobile.file.Files;
import org.lukhnos.portmobile.file.Path;
import java.util.Arrays;

import static org.junit.Assert.assertEquals;

public class AppendDocumentTest {
  Path temp;
  Searcher searcher;

  @Before
  public void setUp() throws Exception {
    temp = Files.createTempDirectory(SuggesterTest.class.getCanonicalName());
  }

  @After
  public void tearDown() throws Exception {
    searcher.close();
    Util.deletePath(temp);
  }

  @Test
  public void appendDocumentTest() throws Exception {
    Document docs1[] = {
        new Document("computer", 2000, 5, false, "", ""),
        new Document("compute", 2000, 2, false, "", ""),
    };

    Document docs2[] = {
        new Document("computing", 2000, 2, false, "", "")
    };

    Indexer indexer = new Indexer(temp.toString(), false);
    indexer.addDocuments(Arrays.asList(docs1));
    indexer.close();

    searcher = new Searcher(temp.toString());
    SearchResult result;
    result = searcher.search("c*", 10);
    assertEquals(docs1.length, result.totalHits);
    searcher.close();

    indexer = new Indexer(temp.toString(), true);
    indexer.addDocuments(Arrays.asList(docs2));
    indexer.close();

    searcher = new Searcher(temp.toString());
    result = searcher.search("c*", 10);
    assertEquals(docs1.length + docs2.length, result.totalHits);
    searcher.close();
  }
}
