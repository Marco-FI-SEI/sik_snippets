sc1 = SnippetCategory.create!({ title: "Javascript", owner: 1 })
sc2 = SnippetCategory.create!({ title: "CSS", owner: 1 })
sc3 = SnippetCategory.create!({ title: "Angular", owner: 2 })
sc4 = SnippetCategory.create!({ title: "HTML", owner: 2 })
sc5 = SnippetCategory.create!({ title: "React", owner: 3 })


s1 = Snippet.create!({ title: "Recursion", body: "Recursion text", snippet_category_id: 1})
s2 = Snippet.create!({ title: "Loops", body: "Loops text", snippet_category_id: 1})
s3 = Snippet.create!({ title: "Loops2", body: "Loops2 text", snippet_category_id: 1})
s4 = Snippet.create!({ title: "Loops3", body: "Loops3 text", snippet_category_id: 1})
s5 = Snippet.create!({ title: "Loops4", body: "Loops4 text", snippet_category_id: 2})
s6 = Snippet.create!({ title: "Loops5", body: "Loops5 text", snippet_category_id: 2})


usr1 = User.create!({ first_name: "Tom", email: "example@gmail.com", password_digest: 123 })
usr2 = User.create!({ first_name: "John", email: "example2@gmail.com", password_digest: 456 })
usr3 = User.create!({ first_name: "Pete", email: "example3@gmail.com", password_digest: 789 })
