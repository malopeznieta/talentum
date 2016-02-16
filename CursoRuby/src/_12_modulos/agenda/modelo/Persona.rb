module Agenda
  module Modelo
    class Persona
      attr_accessor :nombre,:edad
      def to_s
        "#{@edad},#{@nombre}"
      end
    end
  end
end