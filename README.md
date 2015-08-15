A Study of Lucene
=================

This project is a study of Lucene and serves as an example of how you can use
Lucene to index documents, search with sorting and paging, highlighting
search results, and providing search suggestions (also known as
"autocomplete").

The sample application in this project works like a movie review search
engine. A sample dataset is provided for testing the app.


Sample Dataset
--------------

I'm using a subset of the
[Large Movie Review Dataset v1.0](http://ai.stanford.edu/~amaas/data/sentiment/)
prepared by Andrew L. Maas et al. as part of their 2011 paper "Learning Word
Vectors for Sentiment Analysis"
([PDF](http://ai.stanford.edu/~ang/papers/acl11-WordVectorsSentimentAnalysis.pdf),
[BibTeX entry](http://ai.stanford.edu/~ang/papers/acl11-WordVectorsSentimentAnalysis.pdf)).
The original dataset is used for sentiment analysis research, and is selected
from IMDb.

The subset contains 1,000 entries about 500 films, each two reviews for each
film, one "positive" and one "negative" according to the Large Movie Review
Dataset.

The original dataset contains two subsets, one "training" and one "testing".
This is the standard division in machine learning and natural language
proceesing. In each subset, each review takes one file, and there are separate
listings of the source URL.

The sample subset here is from the "testing" dataset. I've converted the files
into a JSON file in `sample/acl-imdb-subset.json`. The orginial dataset does
not have the titles and the release years for the films reviewed. I've also
collected them in the JSON file.

For more information about the original data set, please visit the Andrew
Maas's [website](http://ai.stanford.edu/~amaas/data/sentiment/), on which you
can find the download link to the dataset. A detailed README can also be found
in the tarball.


How to Build and Run the App
----------------------------

To build the sample app, you'll need JDK 1.7 or above installed. The project
uses Gradle, and I've included a Gradle wrapper that can bootstrap itself.

To build the app, simple run:

    ./gradlew build

This will compile the app, make the JAR, and also run the tests.

The built JAR is located at `./build/libs/lucenestudy.jar`. Once you have
the JAR, you can build the indices. Suppose you want to put the built
indices under /tmp/testidx:

    java -cp build/libs/lucenestudy.jar org.lukhnos.lucenestudy.Study \
        index sample/acl-imdb-subset.json /tmp/testidx

Then, to search for reviews containg the keyword "robot":

    java -cp build/libs/lucenestudy.jar org.lukhnos.lucenestudy.Study \
        search /tmp/testidx robot

And to see the search suggestion in action:

    java -cp build/libs/lucenestudy.jar org.lukhnos.lucenestudy.Study \
        suggest /tmp/testidx love


Boolean Searches
----------------

The sample app uses Lucene's query parser to process the query string. You can
perform boolean searches with quote strings. For example, this searches for
titles and reviews that contain the term "apocalypse" but not "now":

    java -cp build/libs/lucenestudy.jar org.lukhnos.lucenestudy.Study \
        search /tmp/testidx "apocalypse -now"


On Building the "Far JAR"
-------------------------

The Gradle build script contains a customized `jar` task that builds a fat
JAR (sometimes also known as an "uber-JAR"), which combines all Lucene
dependencies into one resulting JAR. Because of Lucene's use of Java's
[Service Prodider Interface](https://docs.oracle.com/javase/tutorial/sound/SPI-intro.html),
we must make an extra step to include the service files (of the pattern
`META-INF/services/*`) found in each Lucene library's JAR.

Building a fat jar for the project allows us to run the app in command line
easily. Otherwise we would have to supply a long classpath that includes
every Lucene JAR we use, and there are a lot of them.


Extending the App
-----------------

This is nowhere near a comprehensive survey of Lucene. It is a big library
that covers a wide range of use cases. Pull requests that extend the app are
therefore more than welcome.
