# .dotfiles
dotfiles. What else would they be?

## For CIS-aligned hardening

To comply with following evaluations for `/home/*`, `/etc/skel/*`, and `/root/*`.

```
Ensure All User Initialization Files Have Mode 0740 Or Less Permissive
All Interactive User Home Directories Must Have mode 0750 Or Less Permissive
```

|Type|Permissions|Numeric|
|---|---|---|
|Home directory (`~`)|`drwx------`|`700`|
|Subdirectories|`drwx------`|`700`|
|Files|`-rw-------`|`600`|
|Executable scripts|`-rwx------`|`700`|

Set directory permissions to 700 recursively 

`find /home/* -type d -exec chmod 700 {} \;`

Set file permissions to 600 recursively

`find /home/* -type f -exec chmod 600 {} \;`

(Optional) Executable scripts to 700

`find ~ -type f -perm -u+x -exec chmod 700 {} \;`

### Exceptions and Practical Considerations

While `700` (directories) and `600` (files) are ideal defaults, there are common scenarios with permissible variations:

- Public_html or shared directories (like `~/public_html`):
    
    - Directories: `750` (`drwxr-x---`)
    - Files: `640` (`-rw-r-----`)

- SSH keys (`~/.ssh`) _(critical security files)_:
    
    - Directory: `700`
    - Private keys: `600`
    - Public keys (`authorized_keys`): `600` or `644` (though `600` recommended by CIS)

- Dotfiles (user configuration files):
    
    - Ideally: `600`
    - Acceptable: `640`
