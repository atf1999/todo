# todo
Simple shell script that makes a todo list 

Every been hitting vim or emacs and forget to make your daily todo list but don't want to leave terminal?  Well have no fear, todo is hear!

Todo is the fast and easy way to make your todo list fast and easy.

Only one environmental variable is needed which is $TODO to pick the directory the lists go to.
If TODO is not yet intialized, then it defaults to the $HOME directory

To make a new list text file:

```shell
todo -init "list"
```
To append the list
```shell
todo -a "list" "item"
```
To append the list at a specific line at a position
```shell
todo -a "list" "item" 3
```
Now stop worrying about making your list and get back to completing your list!
