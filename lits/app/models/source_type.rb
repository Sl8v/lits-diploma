class SourceType < ApplicationRecord
  KEYS = {
    vk: 1,
    fb: 2,
    dou: 3
  }

  NAMES = {
    1 => :vk,
    2 => :fb,
    3 => :dou,
  }
end
