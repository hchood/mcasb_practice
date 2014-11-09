## Exercise
An acting exercise

### Attributes
| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when exercise was created | `"2012-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of exercise | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **updated_at** | *date-time* | when exercise was updated | `"2012-01-01T12:00:00Z"` |
### Exercise Create
Create a new exercise.

```
POST /exercises
```


#### Curl Example
```bash
$ curl -n -X POST http://localhost:3000/exercises \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 201 Created
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Exercise Delete
Delete an existing exercise.

```
DELETE /exercises/{exercise_id}
```


#### Curl Example
```bash
$ curl -n -X DELETE http://localhost:3000/exercises/$EXERCISE_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Exercise Info
Info for existing exercise.

```
GET /exercises/{exercise_id}
```


#### Curl Example
```bash
$ curl -n -X GET http://localhost:3000/exercises/$EXERCISE_ID

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Exercise List
List existing exercises.

```
GET /exercises
```


#### Curl Example
```bash
$ curl -n -X GET http://localhost:3000/exercises

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
[
  {
    "created_at": "2012-01-01T12:00:00Z",
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "updated_at": "2012-01-01T12:00:00Z"
  }
]
```

### Exercise Update
Update an existing exercise.

```
PATCH /exercises/{exercise_id}
```


#### Curl Example
```bash
$ curl -n -X PATCH http://localhost:3000/exercises/$EXERCISE_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```


## User
Users

### Attributes
| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when user was created | `"2012-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of user | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **updated_at** | *date-time* | when user was updated | `"2012-01-01T12:00:00Z"` |
### User Create
Create a new user.

```
POST /users
```


#### Curl Example
```bash
$ curl -n -X POST http://localhost:3000/users \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 201 Created
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### User Delete
Delete an existing user.

```
DELETE /users/{user_id}
```


#### Curl Example
```bash
$ curl -n -X DELETE http://localhost:3000/users/$USER_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### User Info
Info for existing user.

```
GET /users/{user_id}
```


#### Curl Example
```bash
$ curl -n -X GET http://localhost:3000/users/$USER_ID

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### User List
List existing users.

```
GET /users
```


#### Curl Example
```bash
$ curl -n -X GET http://localhost:3000/users

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
[
  {
    "created_at": "2012-01-01T12:00:00Z",
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "updated_at": "2012-01-01T12:00:00Z"
  }
]
```

### User Update
Update an existing user.

```
PATCH /users/{user_id}
```


#### Curl Example
```bash
$ curl -n -X PATCH http://localhost:3000/users/$USER_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```


## Workout
Acting workouts

### Attributes
| Name | Type | Description | Example |
| ------- | ------- | ------- | ------- |
| **created_at** | *date-time* | when workout was created | `"2012-01-01T12:00:00Z"` |
| **id** | *uuid* | unique identifier of workout | `"01234567-89ab-cdef-0123-456789abcdef"` |
| **updated_at** | *date-time* | when workout was updated | `"2012-01-01T12:00:00Z"` |
### Workout Create
Create a new workout.

```
POST /workouts
```


#### Curl Example
```bash
$ curl -n -X POST http://localhost:3000/workouts \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 201 Created
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Workout Delete
Delete an existing workout.

```
DELETE /workouts/{workout_id}
```


#### Curl Example
```bash
$ curl -n -X DELETE http://localhost:3000/workouts/$WORKOUT_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Workout Info
Info for existing workout.

```
GET /workouts/{workout_id}
```


#### Curl Example
```bash
$ curl -n -X GET http://localhost:3000/workouts/$WORKOUT_ID

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```

### Workout List
List existing workouts.

```
GET /workouts
```


#### Curl Example
```bash
$ curl -n -X GET http://localhost:3000/workouts

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
[
  {
    "created_at": "2012-01-01T12:00:00Z",
    "id": "01234567-89ab-cdef-0123-456789abcdef",
    "updated_at": "2012-01-01T12:00:00Z"
  }
]
```

### Workout Update
Update an existing workout.

```
PATCH /workouts/{workout_id}
```


#### Curl Example
```bash
$ curl -n -X PATCH http://localhost:3000/workouts/$WORKOUT_ID \
  -H "Content-Type: application/json" \

```


#### Response Example
```
HTTP/1.1 200 OK
```
```json
{
  "created_at": "2012-01-01T12:00:00Z",
  "id": "01234567-89ab-cdef-0123-456789abcdef",
  "updated_at": "2012-01-01T12:00:00Z"
}
```


