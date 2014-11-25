# Introduction

[Glasspockets][glasspockets] is an initiative of the [Foundation Center][foundation-center] to collect information on grants administered by U.S. foundations. This package provides an R wrapper for retrieving data from the [Glasspockets API][glasspockets-api]

# Installation

You can install the ```glasspockets``` package via ```devtools``` with the following:

```R
library("devtools")
install_github("dhenderson/glasspockets")
```

# Usage

In order to request data from the Glasspockets website, you'll need a free API key, which [you can sign up for here][glasspockets-api].

The ```glasspocekts``` package requests data from Glasspockets as JSON. There are two actions you can perform with ```glasspocekts```:

- Query the glasspockets API with ```glasspockets.api(...)```
- Load grants data as a ```data.frame``` from a local JSON file retrieved from Glasspockets with ```load.grants(...)```

## Querying the Glasspockets API

To query the Glasspockets API, use the ```glasspockets.api``` method, which takes the following three arguments:

- ```query``` - String search query, typically a foundation name
- ```file.name``` - String file name (can include path) to save the JSON file as
- ```api.key``` - An API key generated from glasspockets.org

The following is an example of requesting all grants from the Gates Foundation:

```R
gates <- glasspockets.api("Gates Foundation", "gates.json", "YOUR_API_KEY")
```

The  ```glasspockets.api``` loads a ```data.frame``` where each row is a grant. The JSON file retrieved from Glasspockets is stored locally on your machine, so you can use it again without having to re-retrieve from the Glasspockets API.

## Loading a local file retrieved from Glasspockets stored as JSON

Once you have retrieved a JSON file from the Glasspockets API and stored it locally with ```glasspockets.api```, you can reload the JSON file as a ```data.frame``` with the following:

```R
gates <- load.grants("gates.json")
```

[foundation-center]: http://foundationcenter.org/
[glasspockets]: http://glasspockets.org/
[glasspockets-api]: http://glasspockets.org/philanthropy-in-focus/reporting-commitment-api-and-querybuilder