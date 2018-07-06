class DbSeedsHelper
  class << self
    def create_users
      User.create([
        {
          first_name: 'Corinne',
          last_name: 'Henk',
          email: 'corinne.m.henk@gmail.com',
          birthdate: '03-07-1992',
          address: '236 N Ellsworth Ave., San Mateo, CA 94401'
        },
        { 
          first_name: 'Moira',
          last_name: 'Fagan',
          email: 'moira.fagan@gmail.com',
          birthdate: '06-22-1992',
          address: '2375 Champlain St NW, Washington, DC 20009'
        },
        {
          first_name: 'Jonathan',
          last_name: 'Henk',
          email: 'jonathanhenk@gmail.com',
          birthdate: '06-25-1989',
          address: '1201H Trillium Circle, Raleigh, NC 27606'
        },
        { 
          first_name: 'Maryann',
          last_name: 'Fitzsimmons',
          email: 'mafitz65.private@gmail.com',
          birthdate: '09-16-1965',
          address: '148R Stoddards Wharf Rd., Gales Ferry, CT 06335'
        }
      ])
    end
  end
end