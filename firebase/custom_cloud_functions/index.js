const admin = require("firebase-admin/app");
admin.initializeApp();

const checkMailEnattente = require("./check_mail_enattente.js");
exports.checkMailEnattente = checkMailEnattente.checkMailEnattente;
const sendEmailToAdmin = require("./send_email_to_admin.js");
exports.sendEmailToAdmin = sendEmailToAdmin.sendEmailToAdmin;
