# ClarkEvents

* Receives and stores any events from Clark Bank systems such as (user.registered, bank.account.opened and etc..)
* A minimal docker alpine container
* Automatically pushes it to dockerhub if tests pass

<p align='center'>
  <img src='https://github.com/ClarkBank/clark_events/blob/master/events.jpg' alt='EventBus diagram'>
</p>

## Installation
``bash
git clone https://github.com/ClarkBank/clark_events.git
cd clark_events
bundle
```

## Running Server

To start the serve execute:
```ruby
ruby bin/run
```

## Contributing
- Fork it
- Create your feature branch (`git checkout -b my-new-feature`)
- Commit your changes (`git commit -am 'Add some feature'`)
- Push to the branch (`git push origin my-new-feature`)
- Create new Pull Request

---

> GitHub [@rafaeljesus](https://github.com/rafaeljesus) &nbsp;&middot;&nbsp;
> Twitter [@rafaeljesus](https://twitter.com/_jesus_rafael)
