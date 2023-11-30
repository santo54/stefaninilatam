Feature: 02 cadastro de usuarios
  
  Background: 
  Given El usuario abre el sitio cadastro de usuarios

  Scenario: Si el campo Nome esta vacio 
  When El usuario ingresa E-mail "test@test.com"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deber ver el error "O campo Nome é obrigatório"
 
  Scenario: Si el campo E-mail esta vacio 
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deber ver el error "O campo E-mail é obrigatório"
 
  Scenario: Si el campo Senha esta vacio 
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa E-mail "test@test.com"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deber ver el error "O campo Senha é obrigatório"

  Scenario: Sin haber completado ninguno de los campos del formulario
  When El usuario hace click en el boton Cadastrar
  And El usuario deber ver el error "O campo Nome é obrigatório"
  And El usuario deber ver el error "O campo E-mail é obrigatório"
  And El usuario deber ver el error "O campo Senha é obrigatório"
  Then El usuario no deberia ver la tabla de usuarios


  Scenario: Si el campo Nombre esta incompleto
  When El usuario ingresa Nome "Juan"
  And El usuario ingresa E-mail "test@test.com"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deber ver el error "Por favor, insira um nome completo"

  Scenario: Si el campo E-mail esta incorrecto
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa E-mail "testtest.com"
  And El usuario ingresa una Senha "12345678"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deber ver el error "Por favor, insira um e-mail válido"

  Scenario: Si el campo Senha esta incorrecto
  When El usuario ingresa Nome "Juan Perez"
  And El usuario ingresa E-mail "test@test.com"
  And El usuario ingresa una Senha "1234567"
  And El usuario hace click en el boton Cadastrar
  Then El usuario deber ver el error "A senha deve conter ao menos 8 caracteres"
