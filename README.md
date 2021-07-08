# Graphiti demo

h2. assumptions

You have a rails environment setup and have run bundle for this project

h3. terminal 1
```
$ rails db:seed
$ rails s
```

h3. terminal 2
```
$ rspec

$ curl -s http://localhost:3000/api/v1/users | jq        # shows users
$ curl -s http://localhost:3000/api/v1/user_classes | jq # shows classes
$ curl -s http://localhost:3000/api/v1/enrollments | jq  # shows enrollments

# enumerate users for a given class
$ curl -v 'http://localhost:3000/api/v1/enrollments?filter\[user_class_id\]=1'

# enumerate classes scheduled within a date range
$ curl -v 'http://localhost:3000/api/v1/user_classes?filter\[start_date\]\[active_on\]=2021-07-08' | jq
```
