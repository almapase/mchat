# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Answer.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE answers_id_seq RESTART WITH 1")

Question.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE questions_id_seq RESTART WITH 1")

TypeTest.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE type_tests_id_seq RESTART WITH 1")

Patient.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE patients_id_seq RESTART WITH 1")

User.destroy_all
ActiveRecord::Base.connection.execute("ALTER SEQUENCE users_id_seq RESTART WITH 1")

#########################
mchat = TypeTest.new(name: "mchat", title: "CUESTIONARIO DEL DESARROLLO COMUNICATIVO Y SOCIAL EN LA INFANCIA <small>(M-CHAT/ES)</small>", instruction: "<p>Por favor responda estas preguntas acerca de su hijo (a) teniendo en cuenta el comportamiento diario de el o ella.</p><p>Si usted ha notado algún comportamiento descrito en este formulario sólo un par de veces, pero no es algo que hace diariamente, entonces responda la opción “no”.</p><p>Por favor responda <strong>“si”</strong> o <strong>“no”</strong> a cada pregunta y no deje preguntas sin responder.</p><p>Muchas gracias.</p>")

#########################
# test de M-Chat
questions_list = [
  [1, "Al apuntar a algo que esta en otro lado de la habitación, ¿su hijo(a) mira en esa dirección?  (POR EJEMPLO, si usted apunta hacia algún juguete o mascota, ¿su hijo mira el objeto o mascota?)"],
  [2, "¿Alguna vez se ha cuestionado la posibilidad de que su hijo(a) sea sordo(a)?"],
  [3, "¿A su hijo(a) le gusta jugar juegos de imaginación o roles? (POR EJEMPLO, ¿le gusta jugar a imaginar que bebe de una taza vacía, o simular llamar por teléfono, o jugar a dar de comer a una muñeca o peluche?)"],
  [4, "¿A su hijo(a) le gusta escalar o treparse a cosas? (POR EJEMPLO: Muebles, juegos estructurales, o escaleras)"],
  [5, "¿A su hijo(a) le gusta mover sus dedos de manera poco común cerca de sus ojos? (POR EJEMPLO, ¿le gusta hacer movimientos cortos y rápidos de sus dedos, en forma irregular y ondulante, cerca de los ojos?)"],
  [6, "¿Su hijo(a) suele apuntar con el dedo para pedir algo o conseguir ayuda? (POR EJEMPLO, apuntar algún  alimento o a un juguete que no logra alcanzar)"],
  [7, "¿Suele su hijo(a) apuntar con un dedo para mostrarle algo que le resulta interesante? (POR EJEMPLO: ¿apunta al cielo para mostrarle un avión, o apunta a la calle para mostrarle un camión?)"],
  [8, "¿A su hijo(a) le interesan otros niños(as)? (POR EJEMPLO: ¿su hijo observa a otros niños, les sonríe, o va hacia ellos?)"],
  [9, "¿Su hijo suele traerle objetos para mostrárselos, no para pedir ayuda si no que para compartir con usted? (POR EJEMPLO: ¿le muestra flores, juguetes de peluche o autitos de juguete?)"],
  [10, "¿Su hijo (a) responde cuando le llaman por su nombre? (POR EJEMPLO: ¿Su hijo mira, habla o balbucea, o deja de hacer lo que está haciendo cuando le llama por su nombre?)"],
  [11, "Cuando usted le sonríe a su hijo(a), ¿él o ella le sonríe de vuelta?"],
  [12, "¿A su hijo le molestan los ruidos comunes del diario vivir? (POR EJEMPLO: ¿Su hijo(a) grita o llora cuando escucha ruidos como la aspiradora o música muy fuerte?)"],
  [13, "¿Su hijo(a) camina?"],
  [14, "Cuando usted habla, juega o viste a su hijo(a), ¿él o ella le mira a los ojos"],
  [15, "¿Su hijo(a) trata de imitar las cosas que usted hace?  (POR EJEMPLO: decir adiós con la mano, aplaudir, o hacer sonidos graciosos cuando usted los hace)"],
  [16, "Cuando usted gira la cabeza para mirar algo, ¿su hijo(a), mira al rededor también para enterarse de lo que usted esta mirando?"],
  [17, "¿Su hijo(a) intenta llamar su atención para que le mire? (POR EJEMPLO: ¿Su hijo busca que le mire para que le celebre, o dice 'mira' o 'mírame'?)"],
  [18, "¿Su hijo(a) entiende cuando usted le pide que haga algo? (POR EJEMPLO: Sin apuntar con el dedo, puede su hijo(a) entender comandos como 'pon el libro en la silla' o 'tráeme la manta')"],
  [19, "Si es que algo nuevo sucede, ¿su hijo(a) le mira a la cara para ver su reaccion? (POR EJEMPLO: ¿su hijo(a) le miraría a usted a la cara si el o ella escucha algún sonido extraño o chistoso, o si ve algún juguete nuevo?)"],
  [20, "¿A su hijo(a) le gustan las actividades donde tiene que moverse? (POR EJEMPLO: Le gusta a él o ella ser mecido en sus brazos o que le den saltitos en el regazo?)"],
]
# questions_list = [
#   [1, "¿Le gusta que le balanceen, o que el adulto le haga el 'caballito' sentándole en sus rodillas, etc.?"],
#   [2, "¿Muestra interés por otros niños o niñas?"],
#   [3, "¿Le gusta subirse a sitios como, por ejemplo, sillones, escalones, juegos del parque...?"],
#   [4, "¿Le gusta que el adulto juegue con él o ella al “cucú-tras” (taparse los ojos y luego descubrirlos; jugar a esconderse y aparecer de repente)"],
#   [5, "¿Alguna vez hace juegos imaginativos, por ejemplo haciendo como si hablara por teléfono, como si estuviera dando de comer a una muñeca, como si estuviera conduciendo un coche o cosas así?"],
#   [6, "¿Suele señalar con el dedo para pedir algo?"],
#   [7, "¿Suele señalar con el dedo para indicar que algo le llama la atención?"],
#   [8, "¿Puede jugar adecuadamente con piezas o juguetes pequeños (por ejemplo cochecitos, muñequitos o bloques de construcción) sin únicamente chuparlos, agitarlos o tirarlos?"],
#   [9, "¿Suele traerle objetos para enseñárselos?"],
#   [10, "¿Suele mirarle a los ojos durante unos segundos?"],
#   [11, "¿Le parece demasiado sensible a ruidos poco intensos? (por ejemplo, reacciona tapándose los oídos, etc.)"],
#   [12, "¿Sonríe al verle a usted o cuando usted le sonríe?"],
#   [13, "¿Puede imitar o repetir gestos o acciones que usted hace? (por ejemplo, si usted hace una mueca él o ella también la hace)"],
#   [14, "¿Responde cuando se le llama por su nombre?"],
#   [15, "Si usted señala con el dedo un juguete al otro lado de la habitación… ¿Dirige su hijo o hija la mirada hacia ese juguete?"],
#   [16, "¿Ha aprendido ya a andar?"],
#   [17, "Si usted está mirando algo atentamente, ¿su hijo o hija se pone también a mirarlo?"],
#   [18, "¿Hace su hijo o hija movimientos raros con los dedos, por ejemplo, acercándoselos a los ojos?"],
#   [19, "¿Intenta que usted preste atención a las actividades que él o ella está haciendo?"],
#   [20, "¿Alguna vez ha pensado que su hijo o hija podría tener sordera?"],
#   [21, "¿Entiende su hijo o hija lo que la gente dice?"],
#   [22, "¿Se queda a veces mirando al vacío o va de un lado al otro sin propósito?"],
#   [23, "Si su hijo o hija tiene que enfrentarse a una situación desconocida, ¿le mira primero a usted a la cara para saber cómo reaccionar?"],
# ]
questions_list.each do |order, question|
  mchat.questions.build(order: order, name: question)
end
mchat.save
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
