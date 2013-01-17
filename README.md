### Leader

A simple wrapper for commands issued by foremans Procfile.

Say you want foreman to (among others) start mysql using your Procfile. What if you already have mysql running but you still want foreman to start all other applications? This is what leader is good fore. It will make foreman believe it successfully started mysql if mysql is already running on port xzy.

### Installation

Add this to your Gemfile

```ruby
gem 'leader', github: 'halo/leader'
```

### Usage

With a Procfile like this:

```bash
mysqld: leader --unless-port-in-use 3306 mysqld
redis: leader --unless-port-in-use 6379 redis-server
```

Foreman will only start mysqld and/or redis if they are not already running on the specified ports.

### Licence

Released under MIT 2013 funkensturm.