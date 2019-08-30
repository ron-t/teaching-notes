# Digital data

## Defining data

"Data" is the most significant concept in this course. Anything that is
known by anyone or anything at any time in any way whatsoever is data.
Everything is information; data is everywhere. The term "Information"
will not have any special meaning in this course. It will be used
interchangeably with "data" when used to mean "something known".

The word "data" is the plural of "datum". For simplicity's sake, let's
agree that datum and data can be used interchangeably, and that it means
"fact" or "facts", i.e. "something known".

We will concern ourselves with a particular form of data, namely data
that is:

  - digital, and

  - can be created, described, recorded, and consumed in some
    predictable way for benefit.

The benefit will depend what the data is consumed for. Most examples in
this course will be to gain some business value by consuming data.

To "consume" data, in this context, means to use it. This could be by
discovering, sourcing, extracting, analysing, cleaning, transforming,
visualising, interpreting, etc.

## Data life cycle and value of data

A generic data life cycle follows these phases: Collect → Prepare →
Analyse → Share → Re-use

Early in the life cycle, data is raw and considered less valuable. At
the end of the life cycle, data is refined and has been transformed into
a more valuable form.

Collect: acquire data

Prepare: transform the data for its intended use

Analyse: glean knowledge from the prepared data

Share: communicate and distribute the knowledge gleaned

Re-use: transform the data for future use

### Exercises

1.  What are examples of activities that take place in the:

    - collection phase?

    - preparation phase?

    - analysis phase?

    - sharing phase?

    - re-use phase?

2.  How could prepared data be more valuable than collected data?

3.  How could analysed data be more valuable than prepared data?

4.  How could shared data be more valuable than analysed data?

5.  In addition to generally having more value, how else does data
    differ throughout the life cycle?

6.  What does validation look like across or between phases?

7.  What does storage and management look like across or between phases?

8.  What does documentation look like across or between phases?

## Alternative data life cycles

<http://www.ddialliance.org/training/why-use-ddi>:

<https://www.dataone.org/data-life-cycle>:

# Files

## Physical storage

All data, whether digital or not, is physically stored. Digital data is
that which is represented using 0s (zeroes) and 1s (ones); non-digital
data can be considered anything else that is not or cannot be.

Non-digital data storage examples: ink on paper; graphite on rock; an
etched surface; knowledge in your brain; a vinyl record; photograph
paper.

To physically store digital data, all that is needed is a consistent way
to represent a 0 and a 1. Digital data has been stored on paper punch
cards, magnetic tapes, optical discs, and hard disks, and can be stored
on any medium that can represent a retrievable sequence of 0s and 1s.
The technologies used over the years have two things in common: i) they
can consistently read and write 0s and 1s, and ii) they manage all the
complexity of doing so.

## Encoding

What the sequence of 0s and 1s mean must be agreed upon by users of the
data. This "agreement of meaning" is called an encoding scheme. You can
think of it like a language. Whoever is writing the data is translating
knowledge into a sequence of 0s and 1s without losing any of that
knowledge. For that data to be communicable, a reader must be able to
retrieve the sequence of 0s and 1s and know what that sequence means.
E.g. the letters you are reading make sense to you because I (as the
writer) am using agreed-upon rules common to the English language, which
we both understand.

Non-digital examples:

1.  Arabic numerals and the base ten numbering scheme.

2.  The English alphabet and the English language.

Digital examples:

1.  0s and 1s, and the base two numbering scheme.

2.  0s and 1s, and the ASCII encoding scheme for English letters.

3.  0s and 1s, and a plain text file using
    [UTF-8](https://en.wikipedia.org/wiki/UTF-8) (.txt) for printable
    characters.

4.  0s and 1s, and a [bitmap
    encoding](https://en.wikipedia.org/wiki/BMP_file_format) (.bmp) for
    images.

Data that is stored on hardware (typically a disk of some sort) follows
some encoding scheme so that it can be read and understood consistently.

Each "bundle of digital data" that is stored, we will call a file. Files
can be considered representations of knowledge recorded digitally using
an encoding scheme. In a digital file, a single 0 or 1 is called a bit,
and eight bits form a byte. This is why computer files are referred to
being "x bytes in size"—representing how many 0s and 1s were used to
record all data in the file.

### Exercises

1.  Use a [hex editor](https://en.wikipedia.org/wiki/Hex_editor) to view
    the sequence of 0s and 1s used to store the files linked below. If
    you cannot find a hex editor, you can install and use the
    [hexdump](https://marketplace.visualstudio.com/items?itemName=slevesque.vscode-hexdump)
    extension on VSCodium as a hex editor.
    
      - [uoa.bmp](resources/01-uoa.bmp)
    
      - [page.bmp](resources/01-page.bmp)
    
      - [uoa.png](resources/01-uoa.png)
    
      - [page.png](resources/01-page.png)

    Note: that all four items are considered files as they use 0s and 1s
    physically stored on a disk to represent information. The 0s and 1s
    are ordered in a specific way that your computer (or applications
    thereon) understands and uses to correctly recreate the images.

    Observe that the starting sequence of bits for both .bmp files are the
    same; likewise with the pair of .png files. Why is this so?

2.  Given that both the uoa.bmp and uoa.png files store,
    pixel-for-pixel, the same image, why is it that their filesizes are
    different?

## Text files vs binary files

All digital files are stored using a binary encoding scheme. In this
regard, all files are considered "binary files". However, some files are
intended to be easily read by humans; such files are called "text files"
or "plain text files".

### Exercises

View the files below using a hex editor (or plain text editor) to
determine whether the files are: stored in binary and/or human-readable
and/or human-comprehensible; and then determine if the file should be
considered a "text file" or not.

<table>
<thead>
<tr class="header">
<th>File</th>
<th>Stored in binary?</th>
<th>Human-readable?</th>
<th>Human-comprehensible?</th>
<th>"Text file"?</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="resources/01-42.txt">42.txt</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><a href="resources/01-ratings.list">ratings.list</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td>This document (.docx version)</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td>This document (.pdf version)</td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><a href="resources/01-page.png">page.png</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><a href="resources/01-url.webloc">url.webloc</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><a href="resources/01-url.url">url.url</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><a href="resources/page.html">page.html</a></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="odd">
<td><p>Code.exe</p>
<p>(the file to launch VSCodium on Windows)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><p>Visual Studio Code.app</p>
<p>(the file to launch VSCodium on macOS)</p></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</tbody>
</table>

We can thus conclude different files are stored in different ways for
different purposes. The way a file's content is stored on disk is called
its format. The file's encoding scheme is one aspect of its format.

## File formats (file types)

File type is a synonym for file format.

Some common file formats are listed here:
<https://en.wikibooks.org/wiki/FOSS_Open_Standards/Comparison_of_File_Formats>

All files of a particular format are stored in the same way, i.e. using
the same encoding scheme and adhering to the same agreed-upon rules. If
a user or application wishing to consume a file does not understand the
file's format, or uses the wrong format's encoding / rules to read the
file's data, it cannot make sense of the file.

Example: rename page.png to page.pdf and attempt to open it.

The .pdf extension tells your computer to use an application that
understands PDF files to read the 0s and 1s of page.pdf and interpret
them as a PDF file. Because the sequence of 0s and 1s do not match that
of a PDF format's encoding scheme and rules, the file cannot be
understood as a PDF.

Note that a file's extension does not provide any real data about a
file. In fact, files do not even record their own name (the host
Operating System's file management system typically handles this).
Changing the name of page.png to page.pdf did not alter of its contents.
You can confirm this using a hex editor. File extensions are merely a
convenient way for humans to differentiate between file formats and for
the Operating System to determine which application to use to open a
file.

### Exercises

Use the "[file](https://en.wikipedia.org/wiki/File_\(command\))" command
to infer a file's format given its content rather than its extension.

<table>
<thead>
<tr class="header">
<th>File alternative on Windows</th>
<th>File on macOS</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Use <a href="http://mark0.net/soft-trid-e.html">TrID</a></td>
<td><p>Open Terminal.</p>
<p>In Terminal, type the following to run the file command on a specific file:</p>
<p>file <em>pathOfFileToCheck</em></p>
<p>You can drag and drop the target file into the Terminal window to automatically get its path.</p></td>
</tr>
</tbody>
</table>

The file or TrID command tries to look for [magic
numbers](https://en.wikipedia.org/wiki/File_format#Magic_number) in a
file to determine its format. The Windows version (TrID) comes with an
external definitions list which is the master list of magic numbers. You
can give specific instructions to TrID to use a different definition
list, otherwise, by default it uses "triddefs.trd" in the same folder as
trid.exe.

1.  Make copies of all the files inspected in exercise 2.3.1 and then
    change or remove the extension of each file's name. Use the TrID or
    file command to determine each file's format.

2.  What is unique about the "Visual Studio Code.app" file?

3.  .docx, .xlsx, .pptx files share the same format.
    
      - Use the file command on a docx/xlsx/pptx file. The result should
        tell you what to do next to "open" that type of file.
    
      - Where is the main content stored? Look for the document's text,
        or worksheet's cells, or presentation's slides.

## File hash (file integrity verification)

We can use tools to quickly determine if there are any bits (1s or 0s)
mistakenly copied or transferred. Even a single bit's difference could
result in a corrupted file.

A common method to verify file integrity is to calculate a ["checksum"
or "hash value"](https://en.wikipedia.org/wiki/Checksum) of the original
file and compare it to the checksum / hash of its copies. If the
checksums / hashes match, then the files are bit-for-bit identical.

We will use the SHA-1 hash function to compute and compare file hashes.

### Exercises

Tools for computing SHA-1 hash values for a single file:

<table>
<thead>
<tr class="header">
<th>Windows</th>
<th>macOS</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>Option 1: Get-Filehash command in Window's PowerShell:</p>
<code>
<p>Get-Filehash -Algorithm SHA1 <em>pathOfFileToCompute</em></p>
</code>
<p>Option 2: Microsoft's FCIV utility in cmd.</p>

<p>Download and unzip <a href="https://www.microsoft.com/en-us/download/details.aspx?id=11533">FCIV</a> to a known location.</p>
<p>Open a Windows explorer window at the same location and type "cmd" in the address bar. This will open a command prompt window at the location where you unzipped the files.</p>
<p>In cmd, type the following to compute the SHA-1 hash for a specific file:</p>
<code><p>fciv -sha1 <em>pathOfFileToCompute</em></p></code>

</td>
<td><p>Open Terminal.</p>
<p>In Terminal, type the following to run the shasum command on a specific file (by default, the command uses the SHA-1 algorithm):</p>
<code>
<p>shasum <em>pathOfFileToCompute</em></p>
</code>
<p>You can drag and drop the target file into the Terminal window to automatically get its path.</p></td>
</tr>
</tbody>
</table>

1.  Inspect these two files and note how similar their binary content
    is.
    
      - File 1:
        [hash1.txt](resources/hash1.txt)
    
      - File 2:
        [hash2.txt](resources/hash2.txt)
  

    
    1.  How many bits are different between the two files?
    
    2.  Compute their respective SHA-1 hashes and compare how similar or
        different the hash values are.

2.  Make copies of all the files inspected in exercise 2.3.1. Note that
    you can use the same files copied for 2.4.1 since a file's name and
    extension do not affect its binary content.

3.  Calculate the SHA-1 hash for each file and compare with a
    classmate's to see if your files are bit-for-bit identical.

# Datatypes (data domains)

Most of the data and files we have looked at so far represented one item
of information, e.g. one page of text, or one image. It is commonly
necessary to record data about a collection of items which together
represent something. E.g. a single receipt is represented by a
collection of lines, and each line is represented by some numbers (for
quantity), dates (for chronology), currencies (for prices), and text
(for description).

Different types of data necessitate different storage and usage
mechanisms to allow them to be used in meaningful ways. These are called
datatypes or data domains. Below are some examples.

<table>
<thead>
<tr class="header">
<th>Datatype (domain)</th>
<th>Purpose</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>Integers (numeric)</td>
<td><p>Counting or sequencing</p>
<p>Labelling (true/false; coding)</p>
<p>Arithmetic</p></td>
</tr>
<tr class="even">
<td>Decimals (numeric)</td>
<td><p>Quantifying measurements (includes dollar amounts)</p>
<p>Arithmetic</p></td>
</tr>
<tr class="odd">
<td>Times (datetime)</td>
<td><p>"Timestamping" by date and/or time (labelling a point in time)</p>
<p>Time durations</p></td>
</tr>
<tr class="even">
<td>Text (string)</td>
<td><p>Human-language text (Latin and non-Latin)</p>
<p>Non-human-language text (codes)</p>
<p>Numbers without the need for arithmetic (e.g. identification numbers)</p></td>
</tr>
<tr class="odd">
<td>Binary (binary)</td>
<td><p>Files (e.g. media files)</p>
<p>Special data (e.g. <a href="http://bsonspec.org/">BSON</a>)</p></td>
</tr>
<tr class="even">
<td>Specialised (misc.)</td>
<td><p>Some examples:</p>
<blockquote>
<p><a href="https://en.wikipedia.org/wiki/Geographic_coordinate_system">Geographic coordinates</a></p>
<p><a href="https://en.wikipedia.org/wiki/XML">XML</a>, <a href="http://www.json.org/">JSON</a>, <a href="https://en.wikipedia.org/wiki/Uniform_Resource_Locator">URLs</a></p>
<p><a href="https://en.wikipedia.org/wiki/Enumerated_type">Enumerations</a> (enums; used for true/false)</p>
<p>Universally unique identifiers (<a href="https://en.wikipedia.org/wiki/Universally_unique_identifier">uuid or guid</a>)</p>
<p>Objects (something with a collection of details)</p>
</blockquote>
<p>These datatypes are usually stored as numbers or text with special features. Where numbers and/or text do not suffice, they can always be stored as binary data.</p></td>
</tr>
</tbody>
</table>

Storing a piece of data using an inappropriate datatype usually results
in a loss of usefulness of data. Compare the usefulness of the data in
[this image
file](resources/AdventureWorks%20sample.PNG)
compared to [this spreadsheet
file](https://docs.google.com/spreadsheets/d/1rKJCmHT0HsEiasvwfIs2GW-mQqYDfmBv7jNl4FuQy1o),
noting that from a human's point of view the exact same knowledge is
recorded in both files.

### Exercises

1.  Choose an information system which you use regularly. E.g. Canvas,
    student e-mail, web search engine. List examples of data created or
    used by that system for each of the datatypes listed in the table
    above.

2.  What datatype could / should [New Zealand
    postcodes](https://www.nzpost.co.nz/personal/sending-within-nz/how-to-address-mail/postcodes/how-postcodes-work)
    be stored as?

3.  What datatype could / should your university ID numbers be stored
    as?

4.  How could / should a list of addresses be recorded?

5.  How could / should a list of integers be recorded?

6.  How could / should a list of personal details be recorded?

# Structured data

In the previous section, we began to see and discuss examples of data
which, while representing a single item, are composed of multiple items.
E.g.

  - The receipt example: a single receipt is composed of multiple
    receipt "lines". Each receipt line is composed of multiple data
    items, e.g. product name, quantity, price, sub-total.

  - A list of personal details: each person's details is composed of
    multiple items, e.g. their names, address(es), phone-number(s),
    e-mail address(es), etc.

Also consider the common need to record multiple receipts or lists.

## Structure

To represent the above data in a way that can be understood by anyone,
it would make sense to impose a structure or order to the data, or at
least to provide some metadata. E.g. for the receipt example we could
hypothetically introduce:

  - Structure: Agree that each receipt must have a "date printed". Agree
    that each receipt must have at least one receipt line, and may have
    up to one hundred. Agree that each receipt line must have one
    product name, one quantity, one price, etc.

  - Order (or sequencing): Agree that for each receipt line, the
    product's name must come first (and it must be text with no more
    than twenty letters), then the quantity next (and it must be a
    positive integer), then the price next (and it must be in NZ dollars
    rounded to two decimal places), etc.

  - Metadata: Provide a guide which explains the structure, order, and
    any other rules agreed-upon.

If the above structure were adopted, all receipts could be recorded in a
predictable and recognisable way. Even if the medium of storing receipts
is on paper, written by hand with ink, it would still allow any human to
read, write, and make use of the receipt data. This is owing to the
structure of the data.

For a human, having structure to store data is a convenience and greatly
aids efficiency when working with the data. For a machine, it is a
necessity. E.g. if a mistake is made in the reading or writing of the
receipt data, a human could still figure out what the *intended* meaning
is. However, a machine could not.

### Exercises

Compare [this image
file](resources/AdventureWorks%20sample.PNG)
to [this spreadsheet
file](https://docs.google.com/spreadsheets/d/1rKJCmHT0HsEiasvwfIs2GW-mQqYDfmBv7jNl4FuQy1o)
(these are the same files from the section above).

1.  Which of the two files provides structure to the data about customer
    details?

2.  How would a human use the data in both files, and how would a
    machine's use differ?

3.  Would there be any loss of structure if a customer's phone number
    was listed first and their CustomerID last? (I.e. a change in
    order.)

4.  Would there be any loss of structure if there were no column
    headings?

5.  Does this spreadsheet format enforce a particular structure?

## Plain text files

A simple and common way to record a small amount of structured data is
to use plain text files. These are single files which typically use
Latin characters; this is the meaning of "plain text", that no "obscure"
characters and non-text characters are used in the file.

A text file by itself enforces no data structure (only its file format).
So, a text file can be used to write anything in any way; to a human, a
text file on a computer is not much different to a blank piece of paper.

### Exercises

1.  On a piece of blank paper, record on it (with a pen or pencil):
    
      - For any three people sitting near you: their name, date of
        birth, favourite food, and a picture of their face.

2.  Create a plain text file and write in it (by using your keyboard)
    the same data as on your piece of paper.

3.  Consider how a human could / would interpret your data, and compare
    it to how a computer would.

4.  Compare the different structures used by your classmates, then and
    agree upon a single structure to adequately store the data on
    everyone's plain text file.

## Text file formats for structured data

Everything written in a plain text file is text. Even if characters are
written representing numeric digits, they are still textual characters.
This is true for all data stored in a text file. Despite this
shortcoming, and coupled with the "blank piece of paper" problem above,
text files (or pure-textual representations) are still commonly used to
record structured data for computer use. Below, we will explore three
widely-used formats: DSV, XML, and JSON. These formats are designed to
be machine-friendly, not human-friendly, but have human-readable (at
least recognisable) textual representations.

Many other formats exist which we will not explore in this course.
Examples include: HTML, LaTeX, wiki markup (wikitext), markdown, YAML,
[formats for subtitles](https://en.wikipedia.org/wiki/Timed_text).

Note that spreadsheet data, such as an Excel file, is usually stored in
binary files. The data is represented in tabular form to humans but
stored in a binary file/format with extra data, e.g. an Excel file
stores multiple worksheets, fonts, colours, macros, graphs etc., all of
which cannot be adequately represented by plain text.

## DSV: delimiter-separated values

<table>
<tbody>
<tr class="odd">
<td>Purpose</td>
<td>To represent tabular data using plain text, for data exchange.</td>
</tr>
<tr class="even">
<td>Structure</td>
<td><p>The notion of rows and columns is used.</p>
<p>Each line of text represents a row. Each row contains a sequence of values representing the column's data. The values are delimited with a special character, usually a tab or comma, to denote the end of that value. Rows are terminated with "end of line" or "new line" characters.</p>
<p>Files which use a comma value delimiter are commonly called "CSV" files.</p>
<p>Files which use a tab value delimiter are commonly called "TSV" files.</p></td>
</tr>
<tr class="odd">
<td>Example</td>
<td>Inspect this file: <a href="resources/01-aes-2015-csv.csv">aes-201k5-csv</a> which contains summary data from <a href="https://www.stats.govt.nz/information-releases/annual-enterprise-survey-2015-financial-year-provisional">Stats NZ's Annual Enterprise Survey 2015</a></td>
</tr>
<tr class="even">
<td>Notes</td>
<td><p>DSV files only contain data; apart from the header row (if there is one) there is no metadata provided in the file.</p>
<p>Every value provided is text. It is up to the user or application to correctly interpret the data for consumption.</p>
<p>Excel can view DSV files and allow you to perform spreadsheet operations and features (though you cannot save those features if you wish to retain the DSV file format). Excel's "text to columns" and "Get data from text" features are particularly useful for handling DSV files.</p></td>
</tr>
</tbody>
</table>

### Exercises

View the speed dating DSV file here: [Speed Dating
Data](resources/Speed%20Dating%20Data.csv).

Metadata for the file is here: [Speed Dating
Data.pdf](resources/Speed%20Dating%20Data.pdf).

1.  What is the delimiter character used in the file?

2.  How many rows and columns are in the file?

3.  How many participants is data recorded for?

4.  How many waves were conducted?

5.  In wave 10, how many male participants were there? How many female
    participants?
    
      - Confirm your answer by checking the metadata about wave 10.

6.  Are there any values which contain the delimiter character, and how
    does the file encode them (or tell Excel to interpret the value
    correctly)?

7.  What are the advantages of using the DSV structure (for humans or
    machines) compared to JSON or XML? What are the disadvantages?

View this Excel file:
[provider\_summary\_tables.xls](resources/provider_summary_tables.xls)

8.  Create a DSV file from its data (choose either the data in PRO.1 or
    PRO.2). You can use Excel to make all the necessary changes then,
    either:
    
      - save as CSV, or
    
      - save a TSV (.txt), or
    
      - copy and paste its contents into a text file and save as TSV.

## JSON: JavaScript Object Notation

<table>
<tbody>
<tr class="odd">
<td>Purpose</td>
<td>To represent "object" data using plain text, for data exchange.</td>
</tr>
<tr class="even">
<td>Structure</td>
<td>Described in <a href="http://json.org/">http://json.org/</a></td>
</tr>
<tr class="odd">
<td>Example</td>
<td>Inspect this file: <a href="resources/01-modernuance.json">modernuance.json</a></td>
</tr>
<tr class="even">
<td>Notes</td>
<td><p>For convenience, we will refer to "name value pairs" as "properties".</p>
<p>Only textual characters are used; some characters and words have special meaning:</p>
<code>{ } [ ] true false null : , "</code>
<p>You will notice in some JSON files that values may attempt to reference other values or objects (either within the same file or elsewhere). JSON merely allows the value to be recorded, but does not provide any relationship or linking features by doing so. The only relationship it provides is hierarchical, whereby objects and arrays can contain "nested" values.</p>
<p>You should view JSON in a text editor that can understand and prettify JSON. VSCode can do this.</p></td>
</tr>
</tbody>
</table>

### Exercises

View the example JSON file:

1.  How many properties does the top-level object have? (We know that
    the top-most item is an object because it is surrounded by curly
    braces.)

2.  What could the top-level object represent?

3.  Find the property named "user":
    
      - What is the value for the property named "biography"?
    
      - What is the name of the property whose value is "null" (the
        value null, not a string)?
    
      - How many followers does this user have?
    
      - How many people does this user follow?
    
      - How many posts has this user made?
    
      - What type of value is the "id" property?
    
      - Does the user object have any properties with number values?

4.  Find the "media" property:
    
      - What type of value is it?
    
      - What type of value is the "page\_info" property?
    
      - What type of value is the "nodes" property?
    
      - How many elements does the array have?
    
      - What type of values are the "comments", and "likes" properties?

5.  Are any of the posts in the file videos?

6.  How are emojis recorded by the system that generated the file?
    
      - What emoji is used in the caption for object with code
        "BQGXFMfAbYK"

7.  When was the image with code "BQGXFMfAbYK" posted?
    
      - JSON does not have a date/time datatype, so dates and times must
        be stored as either objects, numbers, or strings. The system
        that generated the file stores dates using a "[Unix
        timestamp](https://duckduckgo.com/?q=unixtimestamp)" number.

8.  What are the advantages of using JSON (for humans or machines)
    compared to DSV or XML? What are the disadvantages?

## XML: eXtensible Markup Language

<table>
<tbody>
<tr class="odd">
<td>Purpose</td>
<td><p>To represent "document" data using plain text, for data exchange.</p>
<p>(XML has been widely adopted for representing generic data, not just documents.)</p></td>
</tr>
<tr class="even">
<td>Structure</td>
<td><p>Read <a href="https://www.w3schools.com/Xml/xml_tree.asp">https://www.w3schools.com/Xml/xml_tree.asp</a> and <a href="https://www.w3schools.com/Xml/xml_syntax.asp">https://www.w3schools.com/Xml/xml_syntax.asp</a></p>
<p>An XML file describes a document using <strong>elements.</strong> Each element typically contains <strong>content</strong>, and the content is <strong>marked-up</strong> by pairs of <strong>tags</strong> (opening and closing). Technically, XML describes a tree-like structure. It is only when that structure is serialised into a textual representation does it take on the format with the syntax discussed in this course.</p>
<p>Elements may contain other elements. Containment results in relationships between elements.</p>
<ul>
<li><p>Directly contained elements are called children (indirectly are called descendants).</p></li>
<li><p>Directly containing elements are called parents (indirectly are called ancestors).</p></li>
<li><p>Elements contained by the same parent are called siblings.</p></li>
</ul>
<p>Tags can have <strong>attributes</strong> which are name value pairs in the format: attributeName="attributeValue"</p>
<p>XML documents are usually declared with this tag at the beginning of the file:</p>
<code>&lt;?xml version="1.0" encoding="UTF-8"?&gt;</td>
</tr>
<tr class="odd">
<td>Example</td>
<td>
<pre>&lt;?xml version="1.0" encoding="UTF-8"?&gt;
&lt;bookstore&gt;
  &lt;book category="cooking"&gt;
    &lt;title lang="en"&gt;Everyday Italian&lt;/title&gt;
    &lt;author&gt;Giada De Laurentiis&lt;/author&gt;
    &lt;year&gt;2005&lt;/year&gt;
    &lt;price&gt;30.00&lt;/price&gt;
  &lt;/book&gt;
  &lt;book category="children"&gt;
    &lt;title lang="en"&gt;Harry Potter&lt;/title&gt;
    &lt;author&gt;J K. Rowling&lt;/author&gt;
    &lt;year&gt;2005&lt;/year&gt;
    &lt;price&gt;29.99&lt;/price&gt;
  &lt;/book&gt;
  &lt;book category="web"&gt;
    &lt;title lang="en"&gt;Learning XML&lt;/title&gt;
    &lt;author&gt;Erik T. Ray&lt;/author&gt;
    &lt;year&gt;2003&lt;/year&gt;
    &lt;price&gt;39.95&lt;/price&gt;
  &lt;/book&gt;
&lt;/bookstore&gt;</pre>
<p>Source: <a href="https://www.w3schools.com/Xml/xml_tree.asp">https://www.w3schools.com/Xml/xml_tree.asp</a></p></td>
</tr>
<tr class="even">
<td>Notes</td>
<td><p>The metadata describing the structure / rules for a particular XML format are described in its "<a href="https://en.wikipedia.org/wiki/XML_schema">schema</a>" file.</p>
<p>You should view XML in a text editor that can understand and prettify XML. VSCode can do this with the <a href="https://marketplace.visualstudio.com/items?itemName=DotJoshJohnson.xml">XML Tools</a> extension installed.</p></td>
</tr>
</tbody>
</table>

# Databases

Until now we have worked with single files, which have sufficed for
small amounts of data or simple data. However, meaningful data often
comes in large volumes and are interrelated or otherwise complex. E.g.

  - data within the same file have relationships with other data, e.g.
    row 2 is data about a comment that was made in reply to a comment
    recorded in row 1

  - data stored in different files are related, e.g. a file contains a
    list of posts made by users, and another file contains those users'
    profile details

To manage this level of complexity, a solution is needed to handle a
collection of files (or collection of data). This is generally what
databases aim to achieve.

## Definition

Any logical construct (or mechanism) that allows a collection of data to
be stored and retrieved in a structured and predictable way can be
called a database.

### Exercises

1.  Consider which of these can be considered a database: Wikipedia;
    your mobile phone's contact list; a paper diary; a cookbook; an
    Excel spreadsheet.

In this course, a database typically refers to a digital file, or
computer system (which manages files), that stores data. To manage the
database, something needs to take care of issues such as:

  - How the data will be physically stored on a computer

  - Govern how much data can be stored

  - Ensure the data is correct / valid according to user requirements

  - Enforce rules according to user requirements

  - Govern who can access (read and / or write) which data

  - Govern how users access the data safely—without compromising the
    integrity of the data

A modern database management system (DBMS) is designed to take care of
such issues.

## DBMS

DBMS are software applications (although sometimes hardware is a part of
it) to store and manage digital data. The DBMS we will use in this
course is Microsoft's SQL Server 2016.

Other common DBMS can be seen here: <http://db-engines.com/en/ranking>.

Different DBMS have different strengths and weaknesses. Some DBMS also
use different models. SQL Server uses a relational model—something we
will explore later in this course. MongoDB (taught in BUSAN 300) is the
most popular non-relational DBMS. Non-relational models are sometimes
called "NoSQL" models, typically meaning "Not SQL" or "Not Only SQL".

## Relational model

The relational model a specific way of thinking about data that allows
almost any form of structured data to be described. It is based on
[relational algebra](https://en.wikipedia.org/wiki/Relational_algebra).

A DBMS that uses the relational model is also called a RDBMS.

# Relational data and RDBMS

If you can appreciate that the relational model works like
"inter-related spreadsheets", then you can easily start working with
relational data.

## Spreadsheets

In a spreadsheet file, each sheet should be used to store data about one
type of "thing" only. The columns of that sheet describe what data is
stored for that type of thing. Each row is one particular instance of
that type of thing, and each cell in the row contains values describing
that instance.

See sample spreadsheets:

[AdventureWorks
sample](https://docs.google.com/spreadsheets/d/1rKJCmHT0HsEiasvwfIs2GW-mQqYDfmBv7jNl4FuQy1o)
and [Related
people](https://docs.google.com/spreadsheets/d/1RsjqYFqAm5RpaxhjFLup0STMGP5I2gVe1mRhfDk5ozc/edit)

Note that on the "Customer" sheet there is some naïve validation and
checking implemented such as forced values for Title, and non-negative
values for CustomerID. A DBMS can do this, and far more, to ensure
data integrity.

Note that each cell in a sheet can only contain one value at most.
Consider how can we store two values for the same row, i.e. meaningfully
achieve two values in one cell? Is it even possible?

### Exercises for AdventureWorks sample spreadsheet

1.  How many customers is data recorded for?

2.  Who placed the order with ID 71845?

3.  What is the most expensive item?

4.  Has anyone ordered the most expensive item?

5.  Whose order cost the most?

6.  Whose order contained the greatest number of different products?

7.  Whose order contained the most units ordered (of any type of
    product)?

8.  Who has placed the most orders?

To store data about two types of things we would need two separate
sheets. And if those two types of things were related in some way, i.e.
certain rows from one sheet were related to certain rows of the other
sheet, then we need a way to record that relationship. This is what the
relational model effectively does.

RDBMS will store data in this "inter-related spreadsheets" method. Data
that is stored in this structure can be called relational data.

We will learn more about the terms and concepts introduced in the table
above, as well as discuss other aspects of the relational model in a
later topic. For now, the "inter-related spreadsheets" understanding
will suffice.

## AdventureWorks Lite (AWLT)

"The AdventureWorks OLTP database supports standard online transaction
processing scenarios for a fictitious bicycle manufacturer (Adventure
Works Cycles). Scenarios include Manufacturing, Sales, Purchasing,
Product Management, Contact Management, and Human Resources. … The
AdventureWorks LT database is a simplified and smaller sample database
helpful for those new to relational database technology". From
[Microsoft's archived SQL Server samples
page](https://web.archive.org/web/20160101142629/https:/msftdbprodsamples.codeplex.com/).

AWLT will be used for examples and exercises in class, and for
assignment questions. Test questions requiring data sets may be based on
AWLT. Whatever data set is used for the tests will be provided to you in
advance of the test so you have time to familiarise yourself with it.

### Exercises

Familiarise yourself with the AWLT data set in Microsoft Access—a basic
RDBMS. Download the database here:
[AWLT.accdb](resources/AWLT.accdb).

1.  Inspect the structure of each table ("design view").
    
      - For each field (column) there is a name, data type, and other
        properties such as size and format.
    
      - Note the key symbol. It signifies the primary key (PK) of a
        table.
    
    1.  Can products have a numeric size?
    
    2.  Can products have a textual ProductID?
    
    3.  Can products have a textual ProductNumber?
    
    4.  Up to how many characters can a customer's first name be?
    
    5.  Can customers have a textual phone number? E.g. 0800 PHONE ME
    
    6.  Does this database attempt to validate customers' e-mail
        addresses?

2.  Inspect the data within each table ("datasheet view").
    
    1.  Identify an instance of a product.
    
    2.  How many products are there?
    
    3.  What is the name of the product with the product number
        HL-U509-B?
    
    4.  How many blue coloured products are there?
    
    5.  How many products are no longer for sale (either ended or
        discontinued)?
    
    6.  How many customers are there?
    
    7.  How many customers does the sales person "michael9" look after?

    These types of questions about the data are called queries.

3.  View the relationships between each table (Database Tools \>
    Relationships).
    
      - Note the links. They signify relationships between the PK of a
        table with columns from another table.
    
    1.  How many sales orders (headers) can each customer make?
    
    2.  Each sales order (header) belongs to how many customers?
    
    3.  Can a sales order be shipped to an address that is different to
        its billing address?
        
        (You may need to inspect the table's data.)
        
        1.  Can both addresses be the same?
        
        2.  Must both addresses belong to the same customer?
    
    4.  Can a product belong to more than one category?
    
    5.  Can a product have more than one model?
    
    6.  Can two products have the same name?
    
    7.  Can two products have the same ProductNumber?
    
    8.  Can two products have the same ProductID?
    
    9.  Can a product's sale price differ from order to order?
    
    10. How many customers have made a sales order?
    
    11. Which sales order has the highest sub total amount?
        
        1.  Which customer made that order?
        
        2.  Where was this order shipped to?
        
        3.  How would you change the shipping method (ShipMethod) of
            this order?
        
        4.  How would you change the shipping address of this order?
            
              - Change it to any address in San Diego (which is a city
                in California).
        
        5.  How would you change the sales person responsible for this
            order? A sales person is responsible for customers so
            consider how you would relate a sales person to an order.

    Often, queries will require inspecting multiple tables. Queries
    involving multiple tables are more complicated and cannot easily or
    quickly be done manually, but answer more useful questions than
    single-table-queries.

4.  Access supports querying. There are 4 example "select" (read-only)
    queries saved in AWLT.accdb. Inspect all of them in Datasheet view,
    then Design view, then SQL view.
    
      - Note the data provided by these queries cannot be achieved by
        manual inspection (not easily or quickly, anyway).
    
      - "Design View" shows a graphical depiction of the tables and
        columns used to produce the query.
    
      - "SQL View" shows the commands given to the DBMS to execute.

People rarely use databases as directly as we have been doing. Most
users consume data from databases without even realising it:

5.  Consumption via a form or application.
    
    Almost all data used in any system is retrieved from or stored in a
    database. Users will typically use an application or website to
    query a database on their behalf to access their requested data. A
    form in Access is an example of this.

  - In AWLT.accdb, view the "SAMPLE Customer Orders" and "SAMPLE Orders
    detail" forms. They show an (ugly) example of how users would
    typically see data from a database—all in one place without having
    to write or understand queries.

6.  Consumption via a report, or exported to another format.
    
    Digital data typically originates from a database. Again, users
    consuming this data typically will not know where it came from, or
    what tables or queries were involved.
    
    A Business example: A sales report published online or printed on
    paper is the result of multiple database queries and data analyses.

  - In AWLT.accdb, view the "Country sales" report. The report
    summarises data in the database using queries.

    A non-business example: Find any statistic cited in a news article.
    The raw data needed to calculate that figure likely originated from a
    database.

## SQL Server 

Microsoft Access was helpful as an introduction to RDBMS and relational
data. Much of it resembles Excel which is familiar to most of us. Access
even has features that many DBMS do not (e.g. forms, reports, and a wide
range of import/export tools), however due to its technical limitations,
we should to use a "real" DBMS that is widely used in industry. Access
has many limitations which result in its limited use in the “real
world”. An Access database exists in one file in one place. This
results in three major limitations: 1. only one person can use the
database at a time; 2. workload is not distributed using a client-server
model; 3. restrictive capacity limits, e.g. 2GB maximum file size.

In a production environment (a system used in a real business for
day-to-day work) a powerful computer in a server centre, or similar, is
used to run the DBMS. This computer is called a database server (or data
server). The experts that look after servers are typically called server
administrations, and experts that manage database servers are called
database administrators (DBA). In this course we will run a server on
our own computers—for simplicity's sake.

The chosen DBMS for this course is Microsoft's SQL Server 2016. SQL
Server uses a "client-server architecture". The data and all management
activities are done "server side", and users request for data or
management activities using a client. There are many versions of SQL
Server:

  - Enterprise Edition (large scale DBMS server)

  - Standard/Developer/Web/Business Intelligence Edition (smaller
    scale/special-use DBMS server)

  - Express Edition and LocalDB (non-production DBMS server)

  - Azure Cloud SQL Database (DBMS-as-a-service)

SQL Server comes with its own client (a great one\!) called SQL Server
Management Studio (SSMS). We will use SSMS as the client, and SQL Server
LocalDB as the server. This allows us to easily emulate a client-server
environment on our own computers for convenience and simplicity

<table>
<thead>
<tr class="header">
<th>Excel/Google sheets</th>
<th>Access</th>
<th>SQL Server</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><p>No/weak structure</p>
<p>Weak data types</p>
<p>Simple tabular data storage but limited features (not a DBMS)</p>
<p>Good for small single data sets</p></td>
<td><p>Enforced structure</p>
<p>Enforced data types</p>
<p>Additional features beyond typical DBMS for business use (reporting, forms, "wizards" for non-expert users)</p>
<p>Good for single/limited- user DBMS scenarios</p></td>
<td><p>Enforced structure</p>
<p>Enforced data types</p>
<p>Full-featured DBMS</p>
<p>Good for multi-user DBMS scenarios (client/ server architecture)</p></td>
</tr>
</tbody>
</table>
