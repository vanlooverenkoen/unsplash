# Unsplash API

## Documentation
This document describes the resources that make up the official Unsplash JSON API.
https://unsplash.com/documentation

## Getting started

Create a developer account and generate an `Client-ID`

## API Calls

# Retrieve a random photo
- Endpoint: `photos/random`
- Method: `GET`
- Query: `Antwerp`

```
GET /photos/random?query=Antwerp HTTP/1.1
Host: api.unsplash.com
Authorization: Client-ID {{CLIENT_ID}}
Cookie: ugid=e160a6e23ad0d3332ff2eb8becb4baf75543264
```

# Retrieve all collections

- Endpoint: `collections`
- Method: `GET`

```
GET /collections HTTP/1.1
Host: api.unsplash.com
Authorization: Client-ID {{CLIENT_ID}}
Cookie: ugid=e160a6e23ad0d3332ff2eb8becb4baf75543264
```

# Retrieve a collection detail

- Endpoint: `collections/{collectionId}`
- Method: `GET`

```
GET /collections/8240068 HTTP/1.1
Host: api.unsplash.com
Authorization: Client-ID {{CLIENT_ID}}
Cookie: ugid=e160a6e23ad0d3332ff2eb8becb4baf75543264
```

# Retrieve collection photos

- Endpoint: `collections/{collectionId}/photos`
- Method: `GET`

```
GET /collections/8240068/photos HTTP/1.1
Host: api.unsplash.com
Authorization: Client-ID {{CLIENT_ID}}
Cookie: ugid=e160a6e23ad0d3332ff2eb8becb4baf75543264
```

# Search

- Endpoint: `search/photos`
- Method: `GET`
- Query: {{SEARCH_TEXT}}

```
GET /search/photos?query=Antwerp HTTP/1.1
Host: api.unsplash.com
Authorization: Client-ID {{CLIENT_ID}}
Cookie: ugid=e160a6e23ad0d3332ff2eb8becb4baf75543264
```

# Profile

- Endpoint: `users/{userId}`
- Method: `GET`
- Query: `Antwerp`

```
GET /users/maureen_dw HTTP/1.1
Host: api.unsplash.com
Authorization: Client-ID {{CLIENT_ID}}
Cookie: ugid=e160a6e23ad0d3332ff2eb8becb4baf75543264
```