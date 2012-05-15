#TXMP

####The missing package manager for textmate

>Author: 
>	Austin Riendeau 
>	Github:: avintagephoto && ariendeau-usgs
>	Email: apriendeau@gmail.com && ariendeau@usgs.gov

-------------------------------------------------------------------

If you are like me, I hate searching for packages and then having to find more
so this was my attempt to have better control over my textmate bundles and themes.

To contribute to the txmp package repo and features. Just fork and submit a pull request.

--------------------------------------------------------------------


###Installation

```shell
git clone git@github.com:avintagephoto/txmp.git
cd txmp
./install
```
> Make sure that '/usr/local/bin' is in your path!

Now try "txmp help"! 

---------------------------------------------------------------------

###Packages

To install a bundle or a theme is easy!
>```shell
> txmp install <package>
>```	

To uninstall, its the same.
>```shell
>txmp uninstall <package>
>```

To show what you have installed:
>```shell
>txmp list
>```
---------------------------------------------------------------------

###Package not listed?

Did we forget to add a package you want?
>```shell
>txmp create <package>
>```

Did you save and mess up? UH-OH! 

Don't worry, got you covered:
>```shell
>txmp edit <package>
>```

Decided the package was useless?
>```shell
>txmp remove <package>
>```
-------------------------------------------------------------------


###Bugs

Please let us know! We are busy trying to keep this working.

-------------------------------------------------------------------

###Developer (even adding a package)

This is built on ruby 1.8.7 and higher.

Please fork the repo and make a pull request.

-------------------------------------------------------------------

###ENJOY!

###Please code responsively :)