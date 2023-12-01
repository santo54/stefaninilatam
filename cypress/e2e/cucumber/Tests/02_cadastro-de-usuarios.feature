Feature: Validación de Formulario de Registro de Usuarios

# language: pt

  Background: 
  Given El usuario ingresa al sitio cadastro de usuarios

  Scenario: Comprobar si el campo Nome está vacío - Tela 2
  When El usuario ingresa E-mail "test@test.com"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deberia ver el error "O campo Nome é obrigatório"
 
  Scenario: Comprobar si el campo E-mail está vacío - Tela 3
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deberia ver el error "O campo E-mail é obrigatório"
 
  Scenario: Comprobar si el campo Senha está vacío - Tela 4
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa E-mail "test@test.com"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deberia ver el error "O campo Senha é obrigatório"

  Scenario: Dejar todos los campos del formulario vacios - Tela 5
  When El usuario hace click en el boton Cadastrar
  Then El usuario no deberia ver la tabla de usuarios
  And El usuario deberia ver el error "O campo Nome é obrigatório"
  And El usuario deberia ver el error "O campo E-mail é obrigatório"
  And El usuario deberia ver el error "O campo Senha é obrigatório"
  


  Scenario: Ingresar un valor incorrecto en el campo Nombre - Tela 6
  When El usuario ingresa Nome "Juan"
  And El usuario ingresa E-mail "test@test.com"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deberia ver el error "Por favor, insira um nome completo"

  Scenario: Ingresar un valor incorrecto campo E-mail - Tela 7
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa E-mail "testtest.com"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deberia ver el error "Por favor, insira um e-mail válido"

  Scenario: Ingresar un valor incorrecto en el campo Senha - Tela 8
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa E-mail "test@test.com"
  And El usuario ingresa una Senha "1234567"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deberia ver el error "A senha deve conter ao menos 8 caracteres"
