class Creature < ApplicationRecord

validates :birds, presence: true, length: {maximum: 80}

validates :mammals, presence: true, length: {maximum: 80}

validates :insects, presence: true, length: {maximum: 80}

validates :others, presence: true, length: {maximum: 80}

end
