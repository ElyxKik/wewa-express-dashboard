const functions = require("firebase-functions");
const admin = require("firebase-admin");
const { SMTPServer } = require("smtp-server");

exports.sendEmailToAdmin = functions.https.onCall(async (data, context) => {
  const message = data.message;
  const subject = data.subject;

  // Définir les informations du serveur SMTP avec le host smtp.sendgrid.net
  const smtpServer = new SMTPServer({
    host: "smtp.sendgrid.net",
    secure: true,
    auth: {
      user: "apikey",
      pass: "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",
    },
  });

  // Initialiser Firestore
  const firestore = admin.firestore();

  try {
    // Récupérer tous les utilisateurs ayant le rôle "admin"
    const adminUsersSnapshot = await firestore
      .collection("users")
      .where("role", "==", "admin")
      .get();

    // Parcourir tous les utilisateurs admins et leur envoyer un e-mail
    adminUsersSnapshot.forEach(async (userDoc) => {
      const userData = userDoc.data();
      if (userData.email) {
        const userEmail = userData.email;

        // Construire le message de l'e-mail
        const mailOptions = {
          from: "notifications@wewaexpress.com",
          to: userEmail,
          subject: subject,
          text: message,
        };

        // Envoyer l'e-mail
        await smtpServer.send(mailOptions);
        console.log(`Email envoyé à ${userEmail}`);
      }
    });

    return { success: true };
  } catch (error) {
    console.error("Erreur lors de l'envoi des e-mails :", error);
    return { success: false, error: error.message };
  }
});
