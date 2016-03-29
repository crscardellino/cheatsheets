# apt2yum cheatsheet

## Simple conversion

For some of the basic packaging operations, apt and yum are basically identical.

 * apt-get install
   * yum install
 * apt-get upgrade
   * yum upgrade
 * apt-get remove
   * yum remove
 * apt-get --reinstall install
   * yum reinstall
 * apt-get install foo=1.0 (to downgrade to version 1.0)
   * yum downgrade foo-1.0
 * apt-get clean
   * yum clean
 * apt-get build-dep
   * yum-builddep
 * dpkg -l
   * yum list installed
 * apt-cache search
   * yum search
 * apt-cache search --names-only
   * yum list
   * repoquery
 * dpkg -L
   * rpm -ql
 * apt-file list
   * repoquery -l
