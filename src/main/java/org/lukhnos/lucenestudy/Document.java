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

public class Document {
  public final String title;
  public final int year;
  public final int rating;
  public final boolean positive;
  public final String review;
  public final String source; // Source URL

  public Document(String title, int year, int rating, boolean positive, String review, String source) {
    this.title = title;
    this.year = year;
    this.rating = rating;
    this.positive = positive;
    this.review = review;
    this.source = source;
  }

  @Override
  public String toString() {
    StringBuilder builder = new StringBuilder();
    builder.append("(")
        .append(title)
        .append(", ")
        .append(year)
        .append(", ")
        .append(rating)
        .append(", ")
        .append(positive)
        .append(", ")
        .append(review)
        .append(", ")
        .append(source)
        .append(")");
    return builder.toString();
  }
}
