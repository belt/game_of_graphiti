root = User.create! first_name: "root", last_name: "account", email: "root@localhost"
root_class = UserClass.create! user: root, name: "SMTP",
                               start_date: Time.now.utc - 1.day,
                               end_date: Time.now.utc + 1.day,
                               description: "Demo class for root account",
                               timezone: -5
