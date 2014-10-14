#!/bin/sh
# Add an alias of MAIL_GUN to MAIL_URL.
echo "-----> Adding MailGun config -> MAIL_URL env"
cat > "$APP_CHECKOUT_DIR"/.profile.d/mailgun.sh <<EOF
  #!/bin/sh
  export MAIL_URL="${MAIL_URL:-smtp://${MAILGUN_SMTP_LOGIN}:${MAILGUN_SMTP_PASSWORD}@${MAILGUN_SMTP_SERVER}:${MAILGUN_SMTP_PORT}}";
EOF
