Feature: Gestión de Usuarios en el Sistema

# language: pt

  Background: 
  Given El usuario ingresa al sitio cadastro de usuarios

  Scenario: Registrar elementos con datos válidos - Tela 9, 10
  When El usuario ingresa los datos en el formulario
  |Nome|Email|Senha|
  |Joao Silva|email@exemplo.com|12345678|
  |Roberto Carlos da Silva|robertinho.carlos@email.com|qwertyui|
  Then El usuario deberia ver un formulario con una tabla con los datos del usuario previamente ingresado
  And El usuario deberia ver la opcion de Excluir los datos ingresados
  And El usuario deberia ver a los nuevos usuarios ordenados por identificación, de menor a mayor
  

  Scenario: Borrar un elemento existente - Tela 11
  When El usuario ingresa los datos en el formulario
  |Nome|Email|Senha|
  |Joao Silva|email@exemplo.com|12345678|
  |Roberto Carlos da Silva|robertinho.carlos@email.com|qwertyui|
  And El usuario borra unos de los usuarios clickando en boton Excluir
  Then El usuario deberia ver una tabla con los datos del usuario previamente ingresado y no ver el eliminado