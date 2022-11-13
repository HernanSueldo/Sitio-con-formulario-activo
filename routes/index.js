var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/', async (req, res, next) => {

  console.log(req.body)

  var nombre = req.body.inputNombre;
  var apellido = req.body.inputApellido;
  var telefono = req.body.inputTelefono;
  var email = req.body.inputEmail;

  var obj = {
    to: 'mayday84@gmail.com',
    subject: 'Consulta desde la Web',
    html: nombre + " " + apellido + " se contacto y quiere mas info a este correo: " + email + ". Su tel es " + telefono
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  })

  var info = await transport.sendMail(obj);

  res.render('index', {
    message: 'Mensaje enviado correctamente',
  });

});

module.exports = router;
