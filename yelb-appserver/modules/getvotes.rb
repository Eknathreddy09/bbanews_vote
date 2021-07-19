require_relative 'restaurantsdbread'
require_relative 'restaurantsdbupdate'

def getvotes()
        pfizer = restaurantsdbread("pfizer")
        covaxin = restaurantsdbread("covaxin")
        sputnik = restaurantsdbread("sputnik")
        covishield = restaurantsdbread("covishield")
        votes = '[{"name": "pfizer", "value": ' + pfizer + '},' + '{"name": "sputnik", "value": ' + sputnik + '},' + '{"name": "covaxin", "value": '  + covaxin + '}, ' + '{"name": "covishield", "value": '  + covishield + '}]'
        return votes
end
