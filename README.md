# JekylPlugins
Some plugins for [Jekyll](https://jekyllrb.com/) (liquid)

## Filter to Add Property to Hash (`addProp.rb`)
Jekyll (liquid) doesn't allow to assign a value to a new property of any hashes like posts.
Use  `addProp.rb` to be able to add keys to hashes.

Syntax:
```
addProp: key, value
```

Example:
Create an object with custom key values.
```
{% assign emptyObject = "" | split: ',' %}
{% assign emptyObject = emptyObject | addProp: "key1", "value1" %}
{% assign emptyObject = emptyObject | addProp: "key2", "value2" %}
```

