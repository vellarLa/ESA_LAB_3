# Лабораторная работа 3 (REST)
## SpringREST vs JAX-RS
 JAX-RS нацелен на разработку веб-сервисов (в отличие от веб-приложений на HTML), в то время как Spring MVC уходит своими корнями в разработку веб-приложений. 
 Spring MVC - это полноценный фреймворк с возможностями REST. Как и JAX-RS, он также предоставляет нам полезные аннотации для абстрагирования от низкоуровневых деталей. 
 Его главное преимущество заключается в том, что он является частью экосистемы Spring Framework. Таким образом, он позволяет нам использовать внедрение зависимостей, 
 как любой другой модуль Spring.  Кроме того, он легко интегрируется с другими компонентами, такими как Spring AOP, Spring Data REST и Spring Security.

## Ход работы
 > Для разработки было выбрано приложение лабораторной работы 2, в котором интегрирован фреймворк Spring.

В ходе лабораторной работы было реализовано REST API для модели, описанной в предыдущих лабораторных ([Лабораторная работа 2](https://github.com/vellarLa/ESA_LAB_2/blob/master/README.md)),
была реализована имплементация API, его интеграция в существующее приложение, а также его расширяемость до типов JSON и XML. Была реализована XSL трансформация, и добавлены XSLT файлы для всех
XML ресурсов.

## Демонстрация работоспособности
### GET (find all)
### http://localhost:8081/rest/tickets

![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/b585ebf1-771d-48b4-b5dc-0a9a82f9bb88)

XML
```bash
<html>
    <body>
        <h1>Tickets</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Seat</th>
                    <th>Cost</th>
                    <th>Timetable</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>952</td>
                    <td>
                                    Seat : 1 | Row 1</td>
                    <td>310.0</td>
                    <td>Holop-2 | 2024-01-10 03:03 | hall(2)
                                </td>
                </tr>
                <tr>
                    <td>953</td>
                    <td>
                                    Seat : 1 | Row 1</td>
                    <td>310.0</td>
                    <td>Astral | 2024-01-12 03:03 | hall(2)
                                </td>
                </tr>
                <tr>
                    <td>955</td>
                    <td>
                                    Seat : 3 | Row 1</td>
                    <td>200.0</td>
                    <td>Astral | 2024-01-12 03:03 | hall(2)
                                </td>
                </tr>
                <tr>
                    <td>954</td>
                    <td>
                                    Seat : 2 | Row 1</td>
                    <td>200.0</td>
                    <td>Astral | 2024-01-12 03:03 | hall(2)
                                </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
```

JSON
```bash
[
    {
        "id": 952,
        "seatDto": {
            "seat": 1,
            "row": 1
        },
        "cost": 310.0,
        "benefits": false,
        "timetable": {
            "id": 653,
            "film": {
                "id": 252,
                "name": "Holop-2",
                "genre": "comedy",
                "country": "Russia"
            },
            "hall": 2,
            "date": "2024-01-10T03:03:00"
        }
    },
    {
        "id": 953,
        "seatDto": {
            "seat": 1,
            "row": 1
        },
        "cost": 310.0,
        "benefits": false,
        "timetable": {
            "id": 654,
            "film": {
                "id": 202,
                "name": "Astral",
                "genre": "horror",
                "country": "US"
            },
            "hall": 2,
            "date": "2024-01-12T03:03:00"
        }
    },
    {
        "id": 955,
        "seatDto": {
            "seat": 3,
            "row": 1
        },
        "cost": 200.0,
        "benefits": true,
        "timetable": {
            "id": 654,
            "film": {
                "id": 202,
                "name": "Astral",
                "genre": "horror",
                "country": "US"
            },
            "hall": 2,
            "date": "2024-01-12T03:03:00"
        }
    },
    {
        "id": 954,
        "seatDto": {
            "seat": 2,
            "row": 1
        },
        "cost": 200.0,
        "benefits": true,
        "timetable": {
            "id": 654,
            "film": {
                "id": 202,
                "name": "Astral",
                "genre": "horror",
                "country": "US"
            },
            "hall": 2,
            "date": "2024-01-12T03:03:00"
        }
    }
]
```

### http://localhost:8081/rest/films

![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/00eda9fa-0029-411e-b756-f70361fb9cf2)

XML
```bash
<html>
    <body>
        <h1>Films</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Genre</th>
                    <th>Country</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>252</td>
                    <td>Holop-2/&gt;
                                </td>
                    <td>comedy</td>
                    <td>Russia</td>
                </tr>
                <tr>
                    <td>253</td>
                    <td>Bremen Town musicians/&gt;
                                </td>
                    <td>drama</td>
                    <td>Russia</td>
                </tr>
                <tr>
                    <td>202</td>
                    <td>Astral/&gt;
                                </td>
                    <td>horror</td>
                    <td>US</td>
                </tr>
                <tr>
                    <td>302</td>
                    <td>Titanic!!/&gt;
                                </td>
                    <td>drama</td>
                    <td>US</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
```

JSON
```bash
[
    {
        "id": 252,
        "name": "Holop-2",
        "genre": "comedy",
        "country": "Russia"
    },
    {
        "id": 253,
        "name": "Bremen Town musicians",
        "genre": "drama",
        "country": "Russia"
    },
    {
        "id": 202,
        "name": "Astral",
        "genre": "horror",
        "country": "US"
    },
    {
        "id": 302,
        "name": "Titanic!!",
        "genre": "drama",
        "country": "US"
    }
]
```

### http://localhost:8081/rest/timetable

![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/c8cad8aa-1ffc-4a96-8ad3-77351e1dc6c9)

XML
```bash
<html>
    <body>
        <h1>Timetable</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Id</th><th>Film</th><th>Hall</th><th>Date</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>653</td><td>Holop-2 | comedy | Russia</td><td>2</td><td>2024-01-10 03:03</td>
                </tr>
                <tr>
                    <td>655</td><td>Holop-2 | comedy | Russia</td><td>3</td><td>2024-01-09 08:08</td>
                </tr>
                <tr>
                    <td>654</td><td>Astral | horror | US</td><td>2</td><td>2024-01-12 03:03</td>
                </tr>
                <tr>
                    <td>652</td><td>Bremen Town musicians | drama | Russia</td><td>2</td><td>2024-01-09 06:06</td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
```

JSON
```bash
[
    {
        "id": 653,
        "film": {
            "id": 252,
            "name": "Holop-2",
            "genre": "comedy",
            "country": "Russia"
        },
        "hall": 2,
        "date": "2024-01-10T03:03:00"
    },
    {
        "id": 655,
        "film": {
            "id": 252,
            "name": "Holop-2",
            "genre": "comedy",
            "country": "Russia"
        },
        "hall": 3,
        "date": "2024-01-09T08:08:00"
    },
    {
        "id": 654,
        "film": {
            "id": 202,
            "name": "Astral",
            "genre": "horror",
            "country": "US"
        },
        "hall": 2,
        "date": "2024-01-12T03:03:00"
    },
    {
        "id": 652,
        "film": {
            "id": 253,
            "name": "Bremen Town musicians",
            "genre": "drama",
            "country": "Russia"
        },
        "hall": 2,
        "date": "2024-01-09T06:06:00"
    }
]
```

### GET (by id)
## Timetable
![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/3e6aee6f-da28-4f9f-bf16-6cda298990f3)
![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/acd32095-4a3d-441b-84cb-4ea5e3bbd4c7)
## Films
![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/c4a706c8-dc90-414e-afc7-d3523e92d530)
![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/061547ec-1908-4f7c-90a4-26e2d8eaedcd)
## Tickets
![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/5d5b750f-0262-4d0c-8c07-55c16f4e3297)
![image](https://github.com/vellarLa/ESA_LAB_3/assets/83453185/c7b20154-0405-4999-baf5-7d08735057ab)
