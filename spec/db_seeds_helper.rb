class DbSeedsHelper
  USER_SEEDS = [
    {
      first_name: 'Corinne',
      last_name: 'Henk',
      email: 'corinne.m.henk@gmail.com',
      birthdate: '07-03-1992',
      address: '236 N Ellsworth Ave., San Mateo, CA 94401'
    },
    {
      first_name: 'Moira',
      last_name: 'Fagan',
      email: 'moira.fagan@gmail.com',
      birthdate: '22-06-1992',
      address: '2375 Champlain St NW, Washington, DC 20009'
    },
    {
      first_name: 'Jonathan',
      last_name: 'Henk',
      email: 'jonathanhenk@gmail.com',
      birthdate: '25-06-1989',
      address: '1201H Trillium Circle, Raleigh, NC 27606'
    },
    {
      first_name: 'Maryann',
      last_name: 'Fitzsimmons',
      email: 'mafitz65@gmail.com',
      birthdate: '16-09-1965',
      address: '148R Stoddards Wharf Rd., Gales Ferry, CT 06335'
    }
  ].freeze

  class << self
    def create_users
      User.create(USER_SEEDS)
    end
  end
end
