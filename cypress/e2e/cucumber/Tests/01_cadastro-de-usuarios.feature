Feature: Verificación de elementos en el Formulario de Registro 

# language: pt

  Background: 
  Given El usuario ingresa al sitio cadastro de usuarios

  Scenario: Visualizar elementos del formulario - Tela 1
  When El usuario accede al sitio
  Then El usuario no deberia ver la tabla de usuarios
  And El usuario deberia ver el campo Nome con valor inicial vacio
  And El usuario deberia ver el campo E-mail con valor inicial vacio
  And El usuario deberia ver el campo Senha con valor inicial vacio
  And El usuario deberia ver el boton Cadastrar
  

 

