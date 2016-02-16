module Videoclub
  module Modelo
    class Persona
      attr_accessor :dni,:nombre
      def to_s
        "#{@dni},#{@nombre}"
      end
    end
  end
end