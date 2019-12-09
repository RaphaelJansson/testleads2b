'use strict'

const Funcionario = use("App/Models/Funcionario");

class FuncionarioController {

  async index ({ request, response, view }) {
    return Funcionario.all();
  }

  async store ({ request, response }) {
    try {
      const data = request.only(["username", "email"])
      return Funcionario.create(data);
    } catch (e) {
      return console.log(e)
    }
  }

  async show ({ params, request, response, view }) {
    const funcionario = await Funcionario.findOrFail(params.id);
    return funcionario;
  }

  async update ({ params, request, response }) {
    const funcionario = await Funcionario.findOrFail(params.id);
    const data = request.only(["username", "email"])
    funcionario.merge(data)
    await funcionario.save()
    return funcionario
  }

  async destroy ({ params, request, response }) {
    const funcionario = await Funcionario.findOrFail(params.id)
    await funcionario.delete()
    return response.send({msg: "Funcionario deletado"})
  }
}

module.exports = FuncionarioController
