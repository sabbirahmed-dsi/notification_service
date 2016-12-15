package com.dsi.notification.handler;

import com.dsi.notification.model.EmailConfig;
import com.dsi.notification.model.Notification;
import com.dsi.notification.model.SMSConfig;
import com.dsi.notification.service.NotificationHandler;
import com.dsi.notification.util.Constants;
import org.apache.log4j.Logger;
import org.codehaus.jettison.json.JSONArray;
import org.codehaus.jettison.json.JSONObject;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * Created by sabbir on 11/9/16.
 */
public class EmailNotificationHandler implements NotificationHandler {

    private static final Logger logger = Logger.getLogger(EmailNotificationHandler.class);

    private EmailConfig emailConfig;
    private SMSConfig smsConfig;

    @Override
    public String constructBody(Notification notification) {
        String success;
        try{
            JSONObject contentObj = new JSONObject(notification.getContentJson());
            String recipientArray = contentObj.getString("recipient");
            String body = contentObj.getString("body");

            String template = notification.getNotificationTemplate().getTemplate();
            String username = emailConfig.getUsername();
            String password = emailConfig.getPassword();
            String host = emailConfig.getHost();

            Properties emailProp = new Properties();
            emailProp.setProperty("mail.smtp.host", host);
            emailProp.setProperty("mail.smtp.auth", emailConfig.getAuth());
            emailProp.setProperty("mail.smtp.port", emailConfig.getPort());
            emailProp.setProperty("mail.smtp.starttls.enable", emailConfig.getTtl());

            Session session = Session.getDefaultInstance(emailProp, null);
            MimeMessage message = new MimeMessage(session);

            message.setFrom(new InternetAddress(username));

            JSONArray recipients = new JSONArray(recipientArray);
            if(recipients.length() > 0) {
                for (int i = 0; i < recipients.length(); i++) {
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipients.getString(i)));
                }
            }

            message.setSubject(template);
            message.setText(body);

            Transport transport = session.getTransport(emailConfig.getTransport());
            transport.connect(host, username, password);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();

            success = "Success";

        } catch (Exception e){
            logger.error("Email confirmation failed: " + e.getMessage());
            success = null;
        }
        return success;
    }

    @Override
    public void setEmailConfigure(EmailConfig emailConfig) {
        this.emailConfig = emailConfig;
    }

    @Override
    public void setSMSConfigure(SMSConfig smsConfig) {
        this.smsConfig = smsConfig;
    }
}
