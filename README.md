# Installing Mojolicious components for hackeriet-mojohula

These steps are used when working on the Mojolicious backend.

## Install dependencies
```
cpanm --installdeps .
```

## Build and test
```
perl Makefile.PL
make
make test
```

## Run
```
perl script/hackeriet_mojohula daemon
```


# Installing Vue.js components for hackeriet-mojohula

This steps are used when working on the Vue.js front-end.

Note: Under Ubuntu, the `yarn` command is called `yarnpkg`

## Project setup
```
yarn install
```

### Compiles and hot-reloads for development
```
yarn serve
```

### Compiles and minifies for production
```
yarn build
```

### Lints and fixes files
```
yarn lint
```

### Audit & upgrade files
```
yarn audit
yarn upgrade
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).


# Installing and running with NixOS
```
nix-shell --pure
```
