class Postulacion < ApplicationRecord
  belongs_to :user
  belongs_to :trabajo
end
