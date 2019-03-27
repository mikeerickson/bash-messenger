# bash-messenger

## Description

Simple bash message routines for displaying consistent end user messages

![Screenshot](https://github.com/mikeerickson/bash-messenger/blob/master/docs/messenger-example.png)

## Installation

Using `curl` you can install the `bash-messenger` library

- move to global directory where you wish to install library (I typically use `~/scripts`)

- use the following `curl` command to install

    `curl -o messenger.sh https://raw.githubusercontent.com/mikeerickson/bash-messenger/master/src/messenger.sh`

## Usage

- Install where you wish to use with your bash scripts
  - I typically have a `~/scripts` directory where I reference all my utility and global bash scripts
- Source messenger library
    `source ~/scripts/messenger.sh`
- Wherever you wish to execute on of the messenger methods

    ```shell
      # standard message
      success "success message"

      # message with label
      success "success message" "SUCCESS"
    ```

### Messenger API

Messenger API includes a suite of utility methods which becomes available to any bash scripts by simply sourcing the `messenger.sh` file

```bash
source messenger.sh
```

#### Messenger Signature

All messenger methods use the same method signature as follows

| Parameter        | Type   | Description                                                                          |
| ---------------- | ------ | ------------------------------------------------------------------------------------ |
| message          | string | Desired message to display in console                                                |
| label [optional] | string | Optional label message, if supplied the label will appear first, followed by message |

#### Messenger Methods

**User Notification Messages**

```bash
error(msg:string, [label:string])

info(msg:string, [label:string])

log(msg:string, [label:string])

debug(msg:string, [label:string])

note(msg:string, [label:string])

notice(msg:string, [label:string])

status(msg:string, [label:string])

success(msg:string, [label:string])

warn(msg:string, [label:string])

warning(msg:string, [label:string])
```

**Utilities:**
```
  version() -> outputs module version
```

### License

Copyright &copy; 2019 Mike Erickson
Released under the MIT license

## Credits

bash-messenger written by Mike Erickson

E-Mail: [codedungeon@gmail.com](mailto:codedungeon@gmail.com)

Twitter: [@codedungeon](http://twitter.com/codedungeon)

Website: [codedungeon.io](http://codedungeon.io)