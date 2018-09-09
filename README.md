# Conveyer - A Library for creating Flow-based Pipelines

[![pipeline status](https://gitlab.com/bloccsio/conveyer/badges/master/pipeline.svg)](https://gitlab.com/bloccsio/conveyer/commits/master)
[![coverage report](https://gitlab.com/bloccsio/conveyer/badges/master/coverage.svg)](https://gitlab.com/bloccsio/conveyer/commits/master)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg)](https://gitlab.com/bloccsio/conveyer/blob/master/LICENSE)

## CONTENTS
- [Description](#description)
- [System Requirements](#system-requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Key Concepts](#key-concepts)
- [Acknowledgments](#acknowledgments)
- [License](#License)

## DESCRIPTION

Conveyer is a library designed to build data pipelines in a clean and modular way by using a mix of Flow-base Programming (FBP), Railway Oriented Programming (ROP), and Elixir GenStage. 

## SYSTEM REQUIREMENTS

## INSTALLATION
The package can be installed by adding `conveyer` to your list of dependencies in `mix.exs`:
```elixir
@deps [
  conveyer: "~> 0.1.0"
]
```
## USAGE

## CONFIGURATION

## KEY CONCEPTS
Conveyer is building on top of the following key concepts:

### Flow Based Programming (FBP)

> Flow-based programming (FBP) is a programming paradigm that defines applications as networks of "black box" processes, which exchange data across predefined connections by message passing, where the connections are specified externally to the processes.

From this idea Conveyer derives the idea of blocks, in the conveyer context blocks are pure functions that are executed as individual processes or individual process pools.

Function blocks will return one of the following tuples: 

- `{:ok, payload}`: Happy path response, the payload re
- `{:error, error}`: 


### Railways Oriented Programming (ROP)
> Railways Oriented Programming (ROP) is a functional approach to error handling on which the out of a function will changing on error, aka straying from the Happy path



### Blocks

Each conveyer pipeline is formed of multiple individual components called blocks. Blocks are encapsulations of independent behaivour, blocks expect a single struct as input, and return a single struct as output; the struct follows a globably agreed specification. 


### Types

There are multiple blocks types designed to serve different behaivours:


phase:
check: 
joint:
error:

## LICENSE

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details

## ACKNOWLEDGEMENTS

**Conveyer** takes inspiration and ideas from the following projects:

- [Flowex](https://github.com/antonmi/flowex)
- [Pipelinex](https://github.com/PhillippOhlandt/pipelinex)
- [ElixirFBP](https://github.com/pcmarks/ElixirFBP)
- [Opus](https://github.com/zorbash/opus)
----
Created:  2018-07-18Z
