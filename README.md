# bash-messenger

## Description

Simple bash message routines for displaying consistent end user messages

## Usage

- Install where you wish to use with your bash scripts
  - I typically have a `~/scripts` directory where I reference all my utility and global bash scripts
- Source messenger library
    `source ~/scripts/messenger.sh`
- Wherever you wish to execute on of the messenger methods

    ```shell
      success "success message"
      success "success message" "SUCCESS"
    ```

#### Messenger Signature

All messenger methods use the same method signature as follows

| Parameter | Type   | Description                                                                          |
| --------- | ------ | ------------------------------------------------------------------------------------ |
| message   | string | Desired message to display in console                                                |
| label     | string | Optional label message, if supplied the label will appear first, followed by message |

#### Messenger Methods

error(msg:string, [label:string - optional])
info(msg:string, [label:string - optional])
log(msg:string, [label:string - optional])
note(msg:string, [label:string - optional])
notice(msg:string, [label:string - optional])
status(msg:string, [label:string - optional])
success(msg:string, [label:string - optional])
warn(msg:string, [label:string - optional])
warning(msg:string, [label:string - optional])

version() -> outputs module version

### License

Copyright &copy; 2019 Mike Erickson
Released under the MIT license

## Credits

bash-messenger written by Mike Erickson

E-Mail: [codedungeon@gmail.com](mailto:codedungeon@gmail.com)

Twitter: [@codedungeon](http://twitter.com/codedungeon)

Website: [codedungeon.io](http://codedungeon.io)