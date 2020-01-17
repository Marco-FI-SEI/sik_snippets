sc1 = SnippetCategory.create!({ title: "Javascript" })
sc2 = SnippetCategory.create!({ title: "CSS" })
sc3 = SnippetCategory.create!({ title: "Angular" })
sc4 = SnippetCategory.create!({ title: "HTML" })
sc5 = SnippetCategory.create!({ title: "React" })


s1 = Snippet.create!({ title: "Recursion", body: "Recursion text", snippet_category_id: 1})
s2 = Snippet.create!({ title: "Loops", body: "Loops text", snippet_category_id: 1})
s3 = Snippet.create!({ title: "Loops2", body: "Loops2 text", snippet_category_id: 1})
s4 = Snippet.create!({ title: "Loops3", body: "Loops3 text", snippet_category_id: 1})
s5 = Snippet.create!({ title: "Loops4", body: "Loops4 text", snippet_category_id: 2})
s6 = Snippet.create!({ title: "Loops5", body: "Loops5 text", snippet_category_id: 2})
