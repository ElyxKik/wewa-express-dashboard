const functions = require("firebase-functions");
const admin = require("firebase-admin");
const nodemailer = require("nodemailer");

exports.checkMailEnattente = functions.https.onCall(async (data, context) => {
  try {
    admin.initializeApp();
    const firestore = admin.firestore();

    async function sendEmail({
      host,
      port,
      secure,
      username,
      password,
      from,
      to,
      subject,
      text,
    }) {
      try {
        const transporter = nodemailer.createTransport({
          host,
          port,
          secure,
          auth: {
            user: username,
            pass: password,
          },
        });

        // Format the "from" address with the friendly name
        const fromAddress = `"Wewa Express" <${from}>`;

        const info = await transporter.sendMail({
          from: fromAddress,
          to,
          subject,
          text,
        });

        console.log("E-mail envoyé avec succès!");
        return null;
      } catch (error) {
        console.error("Erreur lors de l'envoi de l'e-mail:", error);
        throw new functions.https.HttpsError(
          "internal",
          "Erreur lors de l'envoi de l'e-mail",
        );
      }
    }

    const commandesSnapshot = await firestore
      .collection("commandes")
      .where("livreur", "==", "")
      .get();
    const nombreDeCommandesSansLivreur = commandesSnapshot.size;

    if (nombreDeCommandesSansLivreur === 0) {
      console.log("Aucune commande sans livreur trouvé.");
      return { message: "Aucune commande sans livreur trouvé." };
    }

    const usersSnapshot = await firestore
      .collection("users")
      .where("role", "==", "admin")
      .get();

    if (usersSnapshot.empty) {
      console.log("Aucun utilisateur avec le rôle admin trouvé.");
      return { message: "Aucun utilisateur avec le rôle admin trouvé." };
    }

    const emailsDestinataires = usersSnapshot.docs.map(
      (doc) => doc.data().email,
    );

    const message = `Bonjour,\n\nIl y a ${nombreDeCommandesSansLivreur} commandes en attente de livraison. Veuillez les assigner à un livreur.`;

    const mailOptions = {
      host: "smtp.sendgrid.net", // ou tout autre serveur SMTP
      port: 465, // port pour le serveur SMTP
      secure: true, // true pour 465, false pour les autres ports
      username: "apikey", // votre adresse e-mail Gmail
      password:
        "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", // votre mot de passe Gmail
      from: "notifications@wewaexpress.com", // votre adresse e-mail Gmail
      to: emailsDestinataires.join(","), // adresse e-mail des destinataires, séparées par des virgules
      subject: "Commandes en attente de livraison",
      text: message,
    };

    await sendEmail(mailOptions);

    console.log("E-mail envoyé avec succès!");
    return { message: "E-mails envoyés avec succès!" };
  } catch (error) {
    console.error("Erreur lors de l'envoi de l'e-mail:", error);
    throw new functions.https.HttpsError(
      "internal",
      "Erreur lors de l'envoi de l'e-mail",
    );
  }
});
