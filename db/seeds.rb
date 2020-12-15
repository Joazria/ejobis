# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 25.times do
#   Ejober.create(
#     name: Faker::Name.first_name,
#     surname: Faker::Name.last_name,
#     birthday: Faker::Date.birthday(min_age: 18, max_age: 65),
#     gender: Faker::Gender.binary_type,
#     ethnic: ["Preto", "Branco", "Indigeno"].shuffle.first,
#     deficiency: ["Sem deficiancia", "Sem deficiancia", "cadeirante", "Sem deficiancia", "Sem deficiancia","Sem deficiancia","Sem deficiancia","Sem deficiancia",].shuffle.first,
#     skills: Faker::Job.key_skill,
#     release:Faker::Lorem.paragraph(sentence_count: 4, supplemental: true)
#     position:[ "Assistente de vendas",
#                                     "Cozinheiro geral",
#                                     "Atendente de lojas e mercados",
#                                     "Alimentador de linha de produção",
#                                     "Agente de segurança",
#                                     "Repositor de mercadorias",
#                                     "Vendedor de comércio varejista",
#                                     "Servente de obras",
#                                     "Faxineiro",
#                                     "Ajudante de motorista"].shuffle.first,
#     address: Faker::Address.country_by_code(code: 'BR')
#     city: "São Paulo",
#     state: "SP",
#     phone: Faker::PhoneNumber.phone_number_with_country_code,
#     cpf:Faker::Number.leading_zero_number(digits: 11)
#     )

#   ejober.avatar.attach(io: file, filename: file, content_type: "image/jpg")
#   candidate.save

#   puts "#{row["NOME_CANDIDATO"]} criado"
# end
