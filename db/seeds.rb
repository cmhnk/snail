default_user = User.create(email: 'foo@bar.com', password: 'Admin!2345', first_name: 'Foo', last_name: 'Bar')
corinne_family = AddressBook.create(user_id: default_user.id, category: 'Family')
corinne_friends = AddressBook.create(user_id: default_user.id, category: 'Friends')

Contact.create(
  first_name: 'Moira',
  last_name: 'Fagan',
  email: 'moira.fagan@gmail.com',
  birthdate: '22-06-1992',
  address: '2375 Champlain St NW, Washington, DC 20009',
  address_book_id: corinne_friends.id
)

Contact.create(
  first_name: 'Mae',
  last_name: 'Pennington',
  email: 'mpennington@gmail.com',
  birthdate: '28-06-1991',
  address: '2540 College Ave., Berkeley, CA 94704',
  address_book_id: corinne_friends.id)

Contact.create(
  first_name: 'Jonathan',
  last_name: 'Henk',
  email: 'jonathanhenk@gmail.com',
  birthdate: '25-06-1989',
  address: '1201H Trillium Circle, Raleigh, NC 27606',
  address_book_id: corinne_family.id
)

Contact.create(
  first_name: 'Maryann',
  last_name: 'Fitzsimmons',
  email: 'mafitz65@gmail.com',
  birthdate: '16-09-1965',
  address: '148R Stoddards Wharf Rd., Gales Ferry, CT 06335',
  address_book_id: corinne_family.id
)

Contact.create(
  first_name: 'John',
  last_name: 'Henk',
  email: 'henkj@sbcglobal.net',
  birthdate: '31-03-1964',
  address: '12 Mopsic St., Norwich, CT 06360',
  address_book_id: corinne_family.id
)

Contact.create(
  first_name: 'Annie',
  last_name: 'Steel',
  birthdate: '10-08-1991',
  address_book_id: corinne_friends.id
)

Contact.create(
  first_name: 'Andrea',
  last_name: 'C-S',
  birthdate: '02-08-2010',
  address_book_id: corinne_friends.id
)
