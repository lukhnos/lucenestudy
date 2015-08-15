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

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.List;

public class SuggesterTest {
  Path temp;

  @Before
  public void setUp() throws IOException {
    temp = Files.createTempDirectory(SuggesterTest.class.getCanonicalName());
  }

  @After
  public void tearDown() throws IOException {
    Util.deletePath(temp);
  }

  @Test
  public void basicTest() throws Exception {
    Indexer indexer = new Indexer(temp.toString());

    Document docs[] = {
        new Document("test", 2000, 5, false, "", ""),
        new Document("testing", 2000, 0, false, "", ""),
        new Document("tested", 2000, 0, false, "", "")
    };

    indexer.addDocuments(Arrays.asList(docs));
    indexer.close();

    Suggester.rebuild(temp.toString());
    Suggester suggester = new Suggester(temp.toString());
    List<String> results = suggester.suggest("tes");
    System.out.println(results);
    suggester.close();
  }
}
