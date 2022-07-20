# Lintje.dev

Website for [Lintje](https://lintje.dev).

This website is made using Bridgetown. Consult the [Bridgetown
documentation](https://www.bridgetownrb.com/docs/) for more information.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Install](#install)
- [Development](#development)
- [Commands](#commands)
- [Contributing](#contributing)

## Prerequisites

- [GCC](https://gcc.gnu.org/install/)
- [Make](https://www.gnu.org/software/make/)
- [Ruby](https://www.ruby-lang.org/en/downloads/)
  - `>= 2.7`
- [Node](https://nodejs.org)
  - `>= 12`
- [Yarn](https://yarnpkg.com)

## Installation

```sh
bundle install
yarn install
```

## Development

Start the site in development mode, run `bin/bridgetown start` and navigate to
[localhost:4000](https://localhost:4000/).

### Deployment

Configure this command in the build step of the website hosting.

```sh
BRIDGETOWN_ENV=production bin/bridgetown deploy
```

Load the site up within a Ruby console (IRB).

```
bin/bridgetown console
```

## Contributing

Want to make an improvement, follow these steps:

1. Fork this repository.
2. Clone the fork using `git clone` to your local development machine.
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request.
