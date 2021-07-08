root = User.find_or_create_by! first_name: "root", last_name: "account",
                               email: "root@localhost"
root_class = UserClass.find_or_create_by! name: "SMTP",
                                          start_date: Time.now.utc - 1.day,
                                          end_date: Time.now.utc + 1.day,
                                          description: "Demo class",
                                          timezone: -5
enrollments = Enrollment.find_or_create_by! user: root, user_class: root_class
