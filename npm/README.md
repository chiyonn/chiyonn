npm should not be run with administrative privileges because it can expose your system to security risks by allowing potentially harmful packages to modify system files. Instead, it's safer to configure npm to use a user-specific directory for global installations.

1. install nodejs & npm via pacman
```terminal
sudo pacman -S nodejs npm
```

2. create a global npm installation folder
```terminal
mkdir $HOME/.npm-global
```

3. add to a PATH
```diff
+ export PATH="$HOME/.npm-global/bin:$PATH"
```

4. tell npm to configure a new prefix
```terminal
npm config set prefix '~/.npm-global'
```

5. now, install npm globally via npm itself.
```terminal
npm install npm@latest -g
```

6. say bye to npm installed via pacman
```terminal
sudo pacman -R npm
```
