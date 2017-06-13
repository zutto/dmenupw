# tiny dmenu based password manager
---
### what is this?
This is a tiny script to encrypt & decrypt files in conveniently.
I made it to be a 'password manager', somewhere to store credentials for different services conveniently, but I already use it for much more than that.

## Features
* uses dmenu as a gui to encode / decode data
* git support for pulling/pushing encoded files (needs testing)

### Security
The files are encrypted with your own cipher of choice (CIPHER variable on top of the code).
So the files are always as secure as your password is.

However, this is script itself is technically vulnerable to targetted timed attacks, use only on computers that you trust, this is what we pay for convenience.
If you really need to access the files and dont trust the machine, just use openssl to decode the files directly (openssl enc -CIPHER -d -in ~/PW_DIR/<file>), doing the decoding this way is still vulnerable to targetted attacks, but this would be much more difficult attack vector for the red team.



### Install
1. Modify the variables to your liking at the top of the script
2. Modify the variables in config.mk
3. run make install (with enough permissions according to the target folder)
4. (optional) clone/init/whatever your git repo at $PW_DIR (defined at the top of the file on step 1.)



#### Requirements:
1. bash
2. Openssl
3. dmenu
4. xsel (optional if you dont want to copy anything)
5. make (optional, you can use the binary as is, makefile is just for convenient install. In other words, just for copying the file.)





---
todo:
* fix openssl decryption wrong password detection
* more testing
