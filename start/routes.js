'use strict'

const Route = use('Route')

Route.resource('/users', 'UserController').apiOnly();
Route.resource('/funcionario', 'FuncionarioController').apiOnly();
Route.post('/sessions', 'SessionController.create');
Route.get('/', () => {
  return { greeting: 'Hello world in JSON' }
})
