# protospace DB

## Model
|Model          |
:---------------:
|user           |
|prototype      |
|prototype_image|
|like           |
|comment        |

## User
|column|type|option|
|:-:|:_:|:-:|
|name|string|null: false, unique: true|
|email||use 'deviese'|
|password||use 'deviese'|
|profile|text||
|avatar|text||

### association
```
has_many :prototypes
has_many :likes
has_many :comments
```

## Prototype
|column|type|option|
|:-:|:-:|:-:|
|title|text|null: false|
|catch_copy|text||
|concept|text||
|user_id|integer|null: false, foreign_key: true|

### association
```
belongs_to :user
has_many :prototype_images
has_many :likes
has_many :comments
```
 
 ## Prototype_images
 |column|type|option|
 |:-:|:-:|:-:|
 |content|text|null: false|
 |status|integer||
 |prototype_id|integer|null: false, foreign_key: true|
 +
 ### association
 ```
 belons_to :prototype
 ```
 ## Like
 |column|type|option|
 |:-:|:-:|:-:|
 |user_id|integer|null: false, foreign_key: true|
 |prototype_id|integer|null: false, foreignkey: true|
 
### association
```
belongs_to :user
belongs_to :prototype
```

## Comment
|column|type|option|
|:-:|:-:|:-:|
|content|text|null: false|
|user_id|integer|foreign_key: true, null: false|
|prototype_id|integer|foreign_key: true, null: false|

### association
```
belongs_to :user
belongs_to :prototype
```
