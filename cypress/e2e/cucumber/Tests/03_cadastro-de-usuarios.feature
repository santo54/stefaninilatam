Feature: 03 cadastro de usuarios

  Background: 
  Given El usuario abre el sitio cadastro de usuarios

  Scenario: Registrar usuarios con datos válidos
  When El usuario ingresa los datos en el formulario
  |Nome|Email|Senha|
  |Joao Silva|email@exemplo.com|12345678|
  |Roberto Carlos da Silva|robertinho.carlos@email.com|qwertyui|
  And El usuario debe ver la opcion de Excluir los datos ingresados
  And El usuario debe ver a los nuevos usuarios ordenados por identificación, de menor a mayor
  Then El usuario debe ver un formulario con una tabla con los datos del usuario previamente ingresado

  Scenario: Borrar usuario un usuario
  When El usuario ingresa los datos en el formulario
  |Nome|Email|Senha|
  |Joao Silva|email@exemplo.com|12345678|
  |Roberto Carlos da Silva|robertinho.carlos@email.com|qwertyui|
  And El usuario borra unos de los usuarios clickando en boton Excluir
  Then El usuario debe ver una tabla con los datos del usuario previamente ingresado y no ver el eliminado