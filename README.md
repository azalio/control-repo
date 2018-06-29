Это пример control-repo для puppet с тестами.  

Чтобы попробовать, вам надо выполнить следующие команды находясь в корне этого репозитория:  
```
gem install r10k
r10k puppetfile install
bundle install
```

Чтобы проверить что у вас работают тесты, вам надо запустить команду:  
```
bundle exec rspec spec/hosts/ spec/classes/
```

Ниже описание как это все работает.  

