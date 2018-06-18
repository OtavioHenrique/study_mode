require "study_mode/version"
require "study_mode/site_blocker"
require "paint"

module StudyMode
  STUDY = "
  ______    _                  __           ____    ____               __
.' ____ \  / |_               |  ]         |_   \  /   _|             |  ]
| (___ \_|`| |-'__   _    .--.| |  _   __    |   \/   |   .--.    .--.| | .---.
 _.____`.  | | [  | | | / /'`\' | [ \ [  ]   | |\  /| | / .'`\ \/ /'`\' |/ /__\\
| \____) | | |, | \_/ |,| \__/  |  \ '/ /   _| |_\/_| |_| \__. || \__/  || \__.,
 \______.' \__/ '.__.'_/ '.__.;__|\_:  /   |_____||_____|'.__.'  '.__.;__]'.__.'
                                  \__.'
  "
  def self.init
    Paint[STUDY, "f92ade"]
    puts "blocking sites.."
    StudyMode::SiteBlocker.new.block
  end
end
