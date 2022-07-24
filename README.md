# Time-lock-encryption
An implementation of time-lock encryption, an algorithm wihch prevents decryption of data until a specified amount of time passes

Time-lock puzzles are cryptographic algorithms which encrypt data in a way that it's not possible to decrypt encrypted data until a certain amount of time passes. A good explanation of the algorithm:
https://www.cs.tufts.edu/comp/116/archive/fall2013/wclarkson.pdf

Note that this program differs from the algorithm described in the original paper in one aspect. Original algorithm generates a random key, uses it to encrypt data with a symmetric secure encryption algorithm, time-lock-encrypts the key and throws it away, outputting encrypted data and time-lock-encrypted key. This program don't use symmetric encryption, it just time-lock-encrypts the data you give it. This may be theoritcally less secure but I guesstimate practically it's not. Probably this is analogous to you solving one million and one billion math problems in an hour. You can't decrypt either, as both are sufficiently secure (I guesstimate).

## Dependencies
· GNU MP (libgmp)
İnstallation:
https://gmplib.org/#DOWNLOAD

## Build
Navigate to the project directory and run:

`make`

## Usage
Run commands per the below to see their usage:

`./etlp -h`

`./dtlp -h`



### TODO for the next person who is willing to take the task:

* Make a tutorial.
* Store every X time the non-resolved puzzle in a cache file.
* Combine two programs into one and rename it to "timelock".
* Make an installer.
* More explanatory and clean usage info.
* Decryption progess bar.
* Encrypt from any kind of data, not just text.
* Hour, min, second is asked to the user separately and can be provided separately as command option.
* Option to delete the data automatically from places warned after encryption.
* Encrypted data formatted in a way that it's possible for someone with no knowledge of the algorihthm can write a program and decrypt it. Ck, a, t, n values are clear and human-readable, along with the link to the paper above. Still supporting copy-pasting to decryption prompt.
* Don't use key as message, use a symmetric encryption algorithm to encrypt the data with the randomly generated key, time-lock the key, and output encrypted data and time-locked key, like the original algorithm. 
* Inform me on your improved version (I need especially the feature above.).

#### This project is unoffical third-party version 0.3 of the project https://github.com/Leoniels/stlp. Credits to the original author. No part of the original project is guaranteed to be still same.
