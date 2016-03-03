rails-node Cookbook
===================
The purpose of this cookbook is to make spinning up a prod or dev rails instance a snap.


Attributes
----------

#### rails-node::default
<table>
  <tr>
    <th>Attribute</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['user']['credentials']['username']</tt></td>
    <td>String</td>
    <td>Default username</td>
    <td><tt>railsadmin</tt></td>
  </tr>
  <tr>
    <td><tt>['user']['credentials']['group']</tt></td>
    <td>String</td>
    <td>Default user group</td>
    <td><tt>railsadmin</tt></td>
  </tr>
  <tr>
    <td><tt>['user']['credentials']['password']</tt></td>
    <td>String</td>
    <td>Default user password</td>
    <td><tt>railsadmin</tt></td>
  </tr>
  <tr>
    <td><tt>['user']['homedir']</tt></td>
    <td>String</td>
    <td>Default user home directory</td>
    <td><tt>/home/railsadmin</tt></td>
  </tr>
  <tr>
    <td><tt>['user']['uid']</tt></td>
    <td>String</td>
    <td>Default user ID</td>
    <td><tt>0630</tt></td>
  </tr>
</table>

Usage
-----
#### rails-node::dev
This will provision a rails dev node that includes the following:

* nginx
* unicorn
* Ruby on Rails
* PostgreSQL

#### rails-node::prod
This will provision a production rails instance. The difference between the dev and prod instances is that the prod instances do not contain a database, as the database should be hosted on another instance.

* nginx
* unicorn
* Ruby on Rails


Author
-------------------
Cameron Testerman - infiniteloopband@gmail.com
