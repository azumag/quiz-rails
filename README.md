
## Auto deploy
This app is deployed to server automatically with https://www.heroku.com
(master branch)

## Requirement
- Rails 5.0.0
- Ruby 2.2.2 (or later)

## APIs (final)

### Ranking for category
https://blooming-depths-53477.herokuapp.com/ranking/CategoryName
- https://blooming-depths-53477.herokuapp.com/ranking/IT
- https://blooming-depths-53477.herokuapp.com/ranking/Yangon
- https://blooming-depths-53477.herokuapp.com/ranking/Japan

### Category list
https://blooming-depths-53477.herokuapp.com/category/index

### Quiz for specific category
https://blooming-depths-53477.herokuapp.com/quizz/CategoryName
- https://blooming-depths-53477.herokuapp.com/quizz/IT

### Register quiz results
https://blooming-depths-53477.herokuapp.com/ranking/

- Use POST method
- format:
```
{ "name" : "john", "category": "Japan", "accuracy_rate":"0"}
```
