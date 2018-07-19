# Conveyer
#### A Library for creating Flow-based Pipelines

## Contents
- [Installation](#installation)
- [Usage](#usage)

## Installation

```elixir
@deps [
  conveyer: "~> 0.1.0"
]
```
## Key Concepts 

### Flow Based Programming 

### Blocks

Each conveyer pipeline is formed of multiple individual components called Blocks. Blocks are encapsulations of independent behaivour, blocks expect a single struct as input, and return a single struct as output; the struct follows a globably agreed specification. 


### Types

There are multiple blocks types designed to serve different behaivours:


phase:
check: 
joint:
error:


All blocks will return one of the following tuple types:

```
{:ok, value}
{:error, any}
```

## License

> TODO: Add license

----
Created:  2018-07-18Z
