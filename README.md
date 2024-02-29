## Import the MySQL Database
Download and import the database [here](https://github.com/jeddsaliba/php-crud/tree/master/database).

## Change Database Credentials
Open `db.php` and change the `$server`, `$database`, `$username` and `$password`.

## Run Development Server
Run the php server by running this command:

```bash
php -S localhost:8000
```

## Features

- [Fetch Data](#fetch-data)
- [Insert/Store Data](#insert-store-data)
- [Fetch Single Record](#fetch-single-record)
- [Update Data](#update-data)
- [Delete Data](#delete-data)

<a name="fetch-data"></a>
## Fetch Data

**URL**

```bash
{{url}}/list.php
```

**Method**

```bash
GET
```

**Sample Response**

```bash
[
    {
        "id": "1",
        "created_by": "5",
        "name": "asd2",
        "description": "this description",
        "created_at": "2024-02-28 16:18:39",
        "updated_at": "2024-02-28 16:18:39",
        "deleted_at": null
    },
    {
        "id": "2",
        "created_by": "24",
        "name": "Vel est molestiae.",
        "description": "Aut iure aut atque sint magnam tenetur totam cupiditate. Sed eveniet ipsam illum quod cum aliquid sed. Et eligendi repudiandae voluptatem nisi et rerum. Est accusamus delectus sapiente pariatur earum. A veritatis magnam sit rerum. Vitae molestiae facere sint excepturi dolor distinctio.",
        "created_at": "2024-02-28 16:18:39",
        "updated_at": "2024-02-28 16:18:39",
        "deleted_at": null
    },
    {
        "id": "3",
        "created_by": "18",
        "name": "Numquam quis consequatur blanditiis magni.",
        "description": "Odit excepturi sequi accusamus perferendis in in aut. Id quia quaerat ea tenetur pariatur sunt et nulla. Dolor est corrupti ullam sapiente saepe doloremque et et. Animi illo nemo odit dicta quia pariatur sit voluptatibus. Quae dolores quas et.",
        "created_at": "2024-02-28 16:18:39",
        "updated_at": "2024-02-28 16:18:39",
        "deleted_at": null
    },
    {
        "id": "4",
        "created_by": "10",
        "name": "Quia corrupti laboriosam.",
        "description": "Rerum et nemo quis at sed beatae molestiae. Et dolore vitae eum natus architecto. Omnis fugiat enim qui. Necessitatibus nobis aliquam inventore autem.",
        "created_at": "2024-02-28 16:18:39",
        "updated_at": "2024-02-28 16:18:39",
        "deleted_at": null
    },
    {
        "id": "5",
        "created_by": "9",
        "name": "Quo aut dignissimos recusandae.",
        "description": "Consequatur cumque aut tempora eaque deserunt pariatur. Qui molestiae necessitatibus quae aspernatur vel. Aut molestiae qui animi aperiam fuga. Aut vitae nobis impedit molestiae qui.",
        "created_at": "2024-02-28 16:18:39",
        "updated_at": "2024-02-28 16:18:39",
        "deleted_at": null
    }
]
```

<a name="insert-store-data"></a>
## Insert/Store Data

**URL**

```bash
{{url}}/save.php
```

**Payload**

```bash
{
    "name": "This Project Name",
    "description": "This Description"
}
```

**Method**

```bash
POST
```

**Sample Response**

```bash
{
    "id": "54",
    "created_by": "1",
    "name": "New Project",
    "description": "New Project Description",
    "created_at": null,
    "updated_at": null,
    "deleted_at": null
}
```

<a name="fetch-single-record"></a>
## Fetch Single Record

**URL**

```bash
{{url}}/get.php?id=1
```

**Method**

```bash
GET
```

**Sample Response**

```bash
{
    "id": "2",
    "created_by": "24",
    "name": "Vel est molestiae.",
    "description": "Aut iure aut atque sint magnam tenetur totam cupiditate. Sed eveniet ipsam illum quod cum aliquid sed. Et eligendi repudiandae voluptatem nisi et rerum. Est accusamus delectus sapiente pariatur earum. A veritatis magnam sit rerum. Vitae molestiae facere sint excepturi dolor distinctio.",
    "created_at": "2024-02-28 16:18:39",
    "updated_at": "2024-02-28 16:18:39",
    "deleted_at": null
}
```

<a name="update-data"></a>
## Update Data

**URL**

```bash
{{url}}/update.php
```

**Payload**

```bash
{
    "name": "Updated Project Name",
    "description": "Updated Project Description",
    "id": 1
}
```

**Method**

```bash
PUT
```

**Sample Response**

```bash
{
    "id": "1",
    "created_by": "5",
    "name": "Updated Project Name",
    "description": "Updated Project Description",
    "created_at": "2024-02-28 16:18:39",
    "updated_at": "2024-02-28 16:18:39",
    "deleted_at": null
}
```

<a name="delete-data"></a>
## Delete Data

**URL**

```bash
{{url}}/delete.php
```

**Method**

```bash
DELETE
```

**Payload**

```bash
{
    "id": 1
}
```

**Sample Response**

```bash
deleted
```
