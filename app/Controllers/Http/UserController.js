"use strict";

const User = use("App/Models/User");

class UserController {

    async store({ request }) {
      try {
        const data = request.only(["username", "email", "password"])
        return User.create(data);
      } catch (e) {
        return console.log(e)
      }
    }

  }
  
  module.exports = UserController
  