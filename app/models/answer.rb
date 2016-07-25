class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :patient
  has_many :answer_groups

  def classification
    # ISSUE #1
    # Para entregar clasificación de riesgo, las respuestas tienen un punto según la siguiente tabla:
    #
    # Preguntas: 2, 5 y 12, si la respuesta es SI obtiene 1 punto por cada una
    # Preguntas: 1,3,4,6-11,13-20, si la respuesta es NO 1 punto cada una
    # máximo puntaje 20 pts.
    # Clasificación de riesgo:
    #
    # 0-2 pts. Bajo Riesgo.
    # 3-7 pts. Riesgo Medio.
    # 8-20 pts. Alto Riesgo.

    this_score = score
    case this_score
    when 0..2
      return "Bajo Riesgo"
    when 3..7
      return "Riesgo Medio"
    when 8..20
      return "Alto Riesgo"
    end
  end

  def score
    this_score = 0
    si = [2,5,12]
    answer_groups.each do |answer_group|
      order = answer_group.question.order
      this_score += 1 if (si.include?(order) && answer_group.option)
      this_score += 1 if (!si.include?(order) && !answer_group.option)
    end #each
    return this_score
  end #score
end #class
