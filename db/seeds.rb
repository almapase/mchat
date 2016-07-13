# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Answer.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE answers_id_seq RESTART WITH 1")

MchatTest.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE mchat_tests_id_seq RESTART WITH 1")

Patient.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE patients_id_seq RESTART WITH 1")

User.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE users_id_seq RESTART WITH 1")

#########################
# test de M-Chat
questions_list = [
  [1, "¿Le gusta que le balanceen, o que el adulto le haga el 'caballito' sentándole en sus rodillas, etc.?"],
  [2, "¿Muestra interés por otros niños o niñas?"],
  [3, "¿Le gusta subirse a sitios como, por ejemplo, sillones, escalones, juegos del parque...?"],
  [4, "¿Le gusta que el adulto juegue con él o ella al “cucú-tras” (taparse los ojos y luego descubrirlos; jugar a esconderse y aparecer de repente)"],
  [5, "¿Alguna vez hace juegos imaginativos, por ejemplo haciendo como si hablara por teléfono, como si estuviera dando de comer a una muñeca, como si estuviera conduciendo un coche o cosas así?"],
  [6, "¿Suele señalar con el dedo para pedir algo?"],
  [7, "¿Suele señalar con el dedo para indicar que algo le llama la atención?"],
  [8, "¿Puede jugar adecuadamente con piezas o juguetes pequeños (por ejemplo cochecitos, muñequitos o bloques de construcción) sin únicamente chuparlos, agitarlos o tirarlos?"],
  [9, "¿Suele traerle objetos para enseñárselos?"],
  [10, "¿Suele mirarle a los ojos durante unos segundos?"],
  [11, "¿Le parece demasiado sensible a ruidos poco intensos? (por ejemplo, reacciona tapándose los oídos, etc.)"],
  [12, "¿Sonríe al verle a usted o cuando usted le sonríe?"],
  [13, "¿Puede imitar o repetir gestos o acciones que usted hace? (por ejemplo, si usted hace una mueca él o ella también la hace)"],
  [14, "¿Responde cuando se le llama por su nombre?"],
  [15, "Si usted señala con el dedo un juguete al otro lado de la habitación… ¿Dirige su hijo o hija la mirada hacia ese juguete?"],
  [16, "¿Ha aprendido ya a andar?"],
  [17, "Si usted está mirando algo atentamente, ¿su hijo o hija se pone también a mirarlo?"],
  [18, "¿Hace su hijo o hija movimientos raros con los dedos, por ejemplo, acercándoselos a los ojos?"],
  [19, "¿Intenta que usted preste atención a las actividades que él o ella está haciendo?"],
  [20, "¿Alguna vez ha pensado que su hijo o hija podría tener sordera?"],
  [21, "¿Entiende su hijo o hija lo que la gente dice?"],
  [22, "¿Se queda a veces mirando al vacío o va de un lado al otro sin propósito?"],
  [23, "Si su hijo o hija tiene que enfrentarse a una situación desconocida, ¿le mira primero a usted a la cara para saber cómo reaccionar?"],
]
questions_list.each do |order, question|
  MchatTest.create(order: order, question: question)
end

#################
# Users
10.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.free_email)
end

################
# Patients
10.times do
  Patient.create(name: Faker::Name.name, rut: Faker::Number.number(8), age: Faker::Number.between(5, 18), sex: ["Masculino", "Femenino"].sample, dv: "K")
end
