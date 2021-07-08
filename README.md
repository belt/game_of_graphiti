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
$ curl -s http://localhost:3000/api/v1/users | jq        # shows users
$ curl -s http://localhost:3000/api/v1/user_classes | jq # shows classes
$ curl -s http://localhost:3000/api/v1/enrollments | jq  # shows enrollments
$ rspec
```
