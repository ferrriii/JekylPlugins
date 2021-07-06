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

## Stable Sort Filter (`stable-sort.rb`)
Stable sort enables you to chain multiple sort conditions But the default `sort` in Jekyll is unstable.
you can use `stable-sort.rb` to have a stable sort.

Syntax:
```
sort_stable: key_to_sort_by
```

Usage example:
Sort posts by category then sort by author.
```
{% assign orderedPosts = site.posts| sort_stable: "category" | sort_stable: "author"  %}

```