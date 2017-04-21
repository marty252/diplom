# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 
 autors = Autor.create([{first_name: 'Радыгин', second_name: 'Виктор', last_name: 'Юрьевич', spin: '9686', a_id: '136311'},
 						{first_name: 'Лукьянова', second_name: 'Наталия', last_name: 'Владимировна', spin: '9686', a_id: '32186'},
 						{first_name: 'Куприянов', second_name: 'Дмитрий', last_name: 'Юрьевич', spin: '9686', a_id: '124527'},
 						{first_name: 'Карцов', second_name: 'Сергей', last_name: 'Константинович', spin: '9686', a_id: '11091'},
 						{first_name: 'Мартыненко', second_name: 'Анатолий', last_name: 'Иванович', spin: '9686', a_id: '491577'},
 						{first_name: 'Белова', second_name: 'Виктор', last_name: 'Юрьевич', spin: '9686', a_id: '491509'}
 	])
 stat = Statistic.create([{value0: 12, value1: 21, value2: 90, value3: 61, value4: 68, value5: 67, value6: 655.09, value7: 43, value8: 77, value9: 11, value10: 76, value11: 93, value12: 28, value13: 9, value14: 53, value15: 97, value16: 54, value17: 99, value18: 10, value19: 22, value20: 13, value21: 17, value22: 88, value23: 96, value24: 33, value25: 20, value26: 22, value27: 73, value28: 37.99, value29: 61.89, value30: 50, value31: 35, value32: 54, stat5: 41, stat7: 62, stat15: 58, stat16: 10, stat18: 29, stat19: 93, stat20: 84, stat21: 75, stat22: 27, stat23: 29, stat24: 70, stat25: 12, stat26: 81, stat27: 66, stat30: 77, stat31: 33, stat32: 30, autor_id: 1},
  {value0: 412, value1: 721, value2: 190, value3: 780, value4: 268, value5: 167, value6: 199.44, value7: 943, value8: 677, value9: 11, value10: 76, value11: 693, value12: 208, value13: 789, value14: 953, value15: 497, value16: 654, value17: 699, value18: 510, value19: 322, value20: 713, value21: 817, value22: 188, value23: 196, value24: 633, value25: 920, value26: 722, value27: 773, value28: 737.99, value29: 361.89, value30: 950, value31: 635, value32: 954, stat5: 141, stat7: 162, stat15: 358, stat16: 510, stat18: 929, stat19: 193, stat20: 284, stat21: 475, stat22: 777, stat23: 987, stat24: 123, stat25: 987, stat26: 480, stat27: 999, stat30: 122, stat31: 675, stat32: 309, autor_id: 3}
  ])
 jour = Journal.create([{name: 'jj', city: 'moscow'},
 						{name: 'hh', city: 'boston'}
 	])
 publ = Publication.create([{name: 'physic', publ_id: '67585', journal: jour[0]},
 							{name: 'klsers', publ_id: '90231', journal: jour[1]},
 							{name: 'hffd', publ_id: '654', journal: jour[0]},
 							{name: 'wqerty', publ_id: '90876', journal: jour[1]},
 							{name: 'alpha', publ_id: '321543', journal: jour[0]}
 	])
 
 cit = Citation.create([{cit_id: '67585'},
 						{cit_id: '654'},
 						{cit_id: '321543'}
 	])

 cp = CitationsPublication.create([
    {citation_id: 1, publication_id: 3},
    {citation_id: 2, publication_id: 2},
    {citation_id: 3, publication_id: 3}
    ])
 
 ap = AutorsPublication.create([
  {autor_id: 1, publication_id: 3},
  {autor_id: 2, publication_id: 1},
  {autor_id: 2, publication_id: 3},
  {autor_id: 3, publication_id: 5},
  {autor_id: 4, publication_id: 2},
  {autor_id: 4, publication_id: 4},
  {autor_id: 5, publication_id: 4},
  {autor_id: 5, publication_id: 5},
  ])

  