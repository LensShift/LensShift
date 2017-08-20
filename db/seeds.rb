# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# LensShifter.create(email: "weihsi.hu@gmail.com", password: "password")

user = LensShifter.find(1)

resource1 = ResourceItem.create(title: "The Dangers of a Single Book Cover: The Acacia Tree Meme and “African literature”",
author: "Elliot Ross for Africa is a Country, Culture Section",
resource_type: "Blog post",
source_url: "http://africasacountry.com/2014/05/the-dangers-of-a-single-book-cover-the-acacia-tree-meme-and-african-literature/?_ga=1.212803348.1050508315.1398911947",
estimated_reading_time: "2",
short_summary: "This short post makes a statement about the homogeneity of cover art for books published in the West on widely divergent topics whose only connection may be some relation to the African continent or Arabic culture. From the graphic of 36 book covers containing an acacia tree at sunset to 15 covers featuring veiled women, images illustrate the author’s argument.",
long_summary: 
"Elliot Ross’s blog post opens with an image of 36 book covers all portraying an acacia tree and the light of the setting sun. The post then points to similar imagery in the introduction to “Circle of Life” from Disney’s “The Lion King.” Ross posits that the movie is a likely source for this single image used repeatedly to represent literature from much of the African continent. He suggests that Western cover designers limited exposure to the continent may also explain this homogeneity of cover art for such a wide variety of books. Beyond the covers, these books only other connection may be the home continent of the author or the book’s setting in one of Africa’s 54 countries, many with few or no acacias.

Other images of book cover art displayed, such the “meme” of the “soulful-black-woman-with-colourful-smudges” on the covers of Chimamanda Adichie’s UK paperback editions and the almost identical covers of the 2011 and 2008 winners of the Commonwealth Writers’ Prize, are included to demonstrate the recurrent use by some Western publishers of only a few types of imagery to portray an entire continent’s literature. The blog post concludes with an example of a similarly repeated image of veiled women on the covers of 15 books translated from Arabic to English. The photo comes from M. Lynx Qualey’s 2013 blog post on Arabic Literature (In English) titled “Translating for Bigots” from the slide deck of Adam Talib’s presentation of the same name. 

The images tell the story in this blog post of very few words, and Ross sums up his message with a quote from Adam Talib: “Publishers can sometimes package books for bigots.”",
key_takeaways:
"* Cover art is often the first thing most readers see when looking at a book; this art may set the tone and expectations of the reader.
* This post demonstrates that Western editions of books may represent books with similar cover art, even though the actual content may be quite different. 
* Books identified as similar by stereotypical cover art as “African” or “Arabic” literature may not be recognized for their individual merits.",
other_notes:
"@SimonMStevens (“acacia tree sunset treatment” tweet): https://twitter.com/SimonMStevens/status/464049317926686720/photo/1
Intro “Circle of Life” video: https://www.youtube.com/watch?v=1F2RNOCyXe0&feature=youtu.be
@AliceLucieKh (“soulful-black-woman-with-colourful-smudges” tweet): https://twitter.com/aliceluciekh/status/464083653539418113 
“No One Will Remember The Book Cover“ post: http://africasacountry.com/2011/03/no-one-will-remember-the-cover/ 
The Mystery of Clichéd African Book Covers: http://publishingperspectives.com/2014/05/the-mystery-of-cliched-african-book-covers/",
lens_shifter: user)

resource1.tag_list.add("Acacia tree", "African literature", "Arabic literature", "Book cover", "Cover art", "Stereotypical representation", "Sunset", "Veiled women")

resource1.save