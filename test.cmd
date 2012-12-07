/*
 * RxFTP Test
 *
 */

say "* * * SysDropFuncs"
call  sysdropfuncs
say ""

/* REXX FTP */
say "* * * RxFuncAdd : RxFtp"
rc = rxfuncadd("ftploadfuncs", "rxftp", "ftploadfuncs")
say "rc="rc
say ""

say "* * * FtpLoadFuncs"
rc = FtpLoadFuncs()

if rc = -1 then say "rc="rc ": FTPERRNO is `"FTPERRNO"'"
else say "rc="rc
