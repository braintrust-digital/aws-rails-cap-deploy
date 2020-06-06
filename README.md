# Getting Started

This is the example application that pairs with the aws-rails.com YouTube tutorials, please check out the [AWS + Rails series](https://www.youtube.com/playlist?list=PL6lusswsNPHG5csQPFjMExe5XQqr1cJvq)

The header logo is blanked out as I purchased then customized this logo.  While I can use this asset I think I would violate the purchase license if it were distributed freely.

In your terminal application cd into the project folder and type `rails notes`.  I have marked several specific lines you will want to update with *#FIXME* notes.

Steps
* run rails credentials:edit to generate a new master.key and encrypted credential file.  Populate the crednetial file with the follow updating to include your keys.

```
# add your SES email credentials here
#  tutorial: AWS + Rails SES tutorial
#      link:  https://youtu.be/YQd2as8HLtU
aws:
  ses_server: your-ses-endpoint-url
  ses_username: your-api-key
  ses_password: your-api-password

# add a secret key base here
# to generate run `rails secret` in the terminal to generate a new one
secret_key_base: some-secret-key-base

# add your db password here
#  tutorial: How to Create an AWS EC2 tutorial
#      link:  https://youtu.be/M0avxObh8J8
production:
  db_password: your-password
```

* run `rails s` to confirm everything is working

* follow the [deployment tutorial](https://youtu.be/YJzYmhxB8rE) for more info, please direct all question to YouTube.
