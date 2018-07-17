class DbSeedsHelper
  ADDRESS_BOOK_SEEDS = [
    {
      owner: 'Corinne Henk',
      category: 'Friends'
    },
    {
      owner: 'Corinne Henk',
      category: 'Family'
    }
  ].freeze

  class << self
    def create_users
      User.create(USER_SEEDS)
    end

    def create_address_books
      AddressBook.create(ADDRESS_BOOK_SEEDS)
    end
  end
end
