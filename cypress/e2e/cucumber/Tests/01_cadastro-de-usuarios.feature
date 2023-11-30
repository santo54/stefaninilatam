Feature: 01 cadastro de usuarios
  
  Background: 
  Given El usuario abre el sitio cadastro de usuarios

  Scenario: Elementos de login del sitio
  When El usuario entra al sitio
  And El usuario deberia ver el elemento, campo Nome
  And El usuario deberia ver el elemento, campo E-mail
  And El usuario deberia ver el elemento, campo Senha
  And El usuario deberia ver el elemento, boton Cadastrar
  Then El usuario no deberia la tabla de usuarios

 

