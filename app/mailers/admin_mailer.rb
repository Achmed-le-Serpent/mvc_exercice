class AdminMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.admin_mailer.create.subject
  #
  def create(admin)
    @admin = admin

    mail( to: @admin.email, subject: 'Inscription Admin')
  end
end
