Spine = require 'spine'
Home = require 'controllers/home'
Classify = require 'controllers/classify'
Science = require 'controllers/science'
Profile = require 'controllers/profile'
Examine = require 'controllers/examine'
Papers = require 'controllers/papers'
Story = require 'controllers/story'
Team = require 'controllers/team'

class Main extends Spine.Stack
  el: '#main'
  
  controllers:
    home: Home
    classify: Classify
    science: Science
    profile: Profile
    examine: Examine
    papers: Papers
    story: Story
    team: Team
      
  default: 'home'
  
  routes:
    '/': 'home'
    '/classify': 'classify'
    '/science': 'science'
    '/profile': 'profile'
    '/examine/:id': 'examine'
    '/papers': 'papers'
    '/story': 'story'
    '/team': 'team'

module.exports = Main
