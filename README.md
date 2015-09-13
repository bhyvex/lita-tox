Lita::Adapters::Tox
===================

[![Gem Version](https://badge.fury.io/rb/lita-tox.svg)](http://badge.fury.io/rb/lita-tox)
[![Build Status](https://travis-ci.org/braiden-vasco/lita-tox.svg)](https://travis-ci.org/braiden-vasco/lita-tox)
[![Coverage Status](https://coveralls.io/repos/braiden-vasco/lita-tox/badge.svg)](https://coveralls.io/r/braiden-vasco/lita-tox)

[Tox](https://tox.chat) adapter for the [Lita](http://lita.io) chat bot.

**WARNING**

Still in development. Read the README carefully.


TODO
----

Current development version have some limitations
which should be fixed in first release:

* [\[issue #15\]](https://github.com/braiden-vasco/lita-tox/issues/15)
  Only private chats are supported. Adapter will not respond to group invite

* [\[issue #16\]](https://github.com/braiden-vasco/lita-tox/issues/16)
  **libtoxcore** is not included in the gem. It should be compiled manually
  to build the gem native extension successfully. Follow the instructions in
  [that file](https://github.com/irungentoo/toxcore/blob/2ab3b14731061cc04d3ccc50a35093c11d018298/INSTALL.md)

* [\[issue #17\]](https://github.com/braiden-vasco/lita-tox/issues/17)
  JRuby is not supported. Only C extension for Tox is implemented

* [\[issue #18\]](https://github.com/braiden-vasco/lita-tox/issues/18)
  Message length is limited to value of `TOX_MAX_MESSAGE_LENGTH`
  (see [source code of **libtoxcore**](https://github.com/irungentoo/toxcore/blob/2ab3b14731061cc04d3ccc50a35093c11d018298/toxcore/tox.h#L252-L255))

* Adapter has incomplete API for Lita. Only basic methods are implemented


Usage
-----

At first, see the documentation for Lita: http://docs.lita.io/

### Installation

**libtoxcore** should be compiled manually at your computer or server.
Follow the instructions in
[that file](https://github.com/irungentoo/toxcore/blob/2ab3b14731061cc04d3ccc50a35093c11d018298/INSTALL.md)

When **libtoxcore** is installed, add **lita-tox**
to your Lita instance's Gemfile:

```ruby
gem 'lita-tox', '~> 0.1.0'
```

### Configuration

No configuration is needed. You only have to specify adapter as `:tox`

#### Example

This is an example `lita_config.rb` file:

```ruby
Lita.configure do |config|
  config.robot.name = 'Lita'
  config.robot.mention_name = 'lita'

  config.robot.adapter = :tox
end
```
