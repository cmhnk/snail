[![CircleCI](https://circleci.com/gh/cmhnk/snail.svg?style=shield)](https://circleci.com/gh/cmhnk/snail)

# README

This is an Address Book application I'm working on to learn more about:
- fullstack development
- building APIs with GraphQL


#### basic premise

I feel like I send a "what's your address again?" text at least once a week. Sure, I could use an existing application to keep track of friends' addresses... but where's the fun in that?

A user of this application can login and create one or more AddressBooks. AddressBooks can be labeled with a category (like 'grad school friends', 'family', 'co-workers', 'climbers', etc). Currently, each contact belongs to one AddressBook.

Minimal set of necessary features include: adding / removing a contact, adding / removing an AddressBook (and all associated contacts), adding BasicAuth for multi-tenancy, viewing all contacts in an AddressBook, viewing upcoming birthdays of contacts.


#### todos (this will keep growing)

- [x] add User (i.e., Contact) & AddressBook models
- [x] implement minimal API endpoints for User (create, index)
- [ ] implement minimal API endpoints for AddressBook
- [x] implement basic "login" route & component that uses simple caching for now
- [ ] add component for displaying all contacts / users in an AddressBook
- [ ] add component for create contact / user form
- [ ] use Balsamiq or another tool to create some wireframes for fun
- [ ] rename User to Contact?
- [ ] refactor to use graphql