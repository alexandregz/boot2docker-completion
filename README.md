boot2docker-completion.bash
===========================

Simple bash completion for boot2docker


Usage
-----

- Clone repo

```bash
alex@vostok:/Volumes/HD/dev$ git clone https://github.com/alexandregz/boot2docker-completion
alex@vostok:/Volumes/HD/dev$ cd boot2docker-completion/
```

- Copy/move/link boot2docker-completion file to your completion files dir:

For example, with [Homebrew](https://github.com/homebrew/homebrew) bash-completion:
```
alex@vostok:/Volumes/HD/dev/boot2docker-completion(master)$ ln -s $(pwd)/boot2docker-completion.bash  /usr/local/etc/bash_completion.d/boot2docker
```

- Reload your shell: `source ~/.bash_profile`
