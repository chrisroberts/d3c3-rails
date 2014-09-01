# D3C3Rails

Rails helpers for interacting with C3 and loading
the D3 and C3 javascript libraries.

## Installation

Add library to Gemfile:

```ruby
gem 'd3c3-rails'
```

and include in the asset manifests:

```
// app/assets/javascripts
//= require d3c3_rails
```

```
/*
* app/assets/stylesheets/application.css
* = require d3c3_rails
*/
```

## Usage

View helpers for building graphs:

```erb
<div id="my_graph"></div>
<%= javascript_tag do %>
  <%=
    graph_generate('my_graph',
      data: {
        columns: [
          ['one', 1, 2, 3, 1],
          ['two', 3, 6, 1, 4]
        ]
      }
    )
  %>
<% end %>
```

## Information

* Repo: https://github.com/chrisroberts/d3c3-rails
