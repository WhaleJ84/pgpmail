# PGPmail

A shell script using GPG/PGP to hash files for integrity, encrypt them, and email them to a recipient.

## Installation

The script has the following dependencies:

**Required**
- `gpg`
- `mail`

**Optional (for Makefile)**
- `make`

**NOTE:** if you get errors about the `-A` flag being illegal for the mail command and are on a Debian based system, you require `mailutils`.

```shell
# Install
sudo make install

# Uninstall
sudo make uninstall
```

## Usage

See command options with `pgpmail -h`.
The script will fail to run without at least a single file and a recipient specified.

```shell
# Generates a checksum for $FILE, creates an encrypted copy of $FILE
# and sends the encypted copy as an attachment to $RECIPIENT with a
# message containing the checksum and a signature of $SENDER below. 
pgpmail -ces -f $SENDER -a $FILE -t $RECIPIENT
```

