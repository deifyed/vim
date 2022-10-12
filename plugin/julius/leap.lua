local leap = require('leap')

leap.setup {
  -- Enable the default (non-extended) set of gestures
  default_gestures = true,
  -- Map extended gestures to their command counterparts
  extended_gestures = {
	['leap_motion'] = 'normal! zt',
	['leap_motion'] = 'normal! zz',
	['leap_motion'] = 'normal! zb',
  },
}

leap.add_default_mappings()
