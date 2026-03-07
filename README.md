# 🌟 Life Advice App — Spring Boot

A full-stack Spring Boot application that answers questions related to everyday life challenges using an **H2 in-memory database**.

---

## 🗂️ Categories Covered

| Emoji | Category             |
|-------|----------------------|
| 🧘    | Stress Management    |
| ⏰    | Time Management      |
| 💰    | Wealth & Finance     |
| 📚    | Education & Learning |
| ⚔️    | Personal Conflicts   |
| ❤️    | Relationships        |
| 🧠    | Mental Health        |
| 💼    | Career & Work        |
| 🏃    | Health & Wellness    |
| 🚀    | Productivity         |
| 👨‍👩‍👧    | Parenting            |
| 💪    | Self-Confidence      |

---

## 🚀 How to Run

### Prerequisites
- Java 17+
- Maven 3.8+

### Steps
```bash
cd life-advice-app
mvn spring-boot:run
```

Then open: **http://localhost:8080**

---

## 🌐 REST API Endpoints

| Method | Endpoint                                | Description                         |
|--------|-----------------------------------------|-------------------------------------|
| GET    | `/api/categories`                       | List all categories with counts     |
| GET    | `/api/categories/{id}`                  | Get single category                 |
| GET    | `/api/advice`                           | Get all advice entries              |
| GET    | `/api/advice/{id}`                      | Get specific advice by ID           |
| GET    | `/api/advice/random`                    | Get one random advice               |
| GET    | `/api/advice/random/{categoryName}`     | Random advice from a category       |
| GET    | `/api/advice/category/{categoryName}`   | All advice in a category            |
| GET    | `/api/advice/urgency/{level}`           | Filter by urgency (LOW/MEDIUM/HIGH/CRITICAL) |
| GET    | `/api/advice/difficulty/{level}`        | Filter by difficulty (BEGINNER/INTERMEDIATE/ADVANCED) |
| GET    | `/api/advice/search?q=keyword`          | Quick keyword search                |
| POST   | `/api/advice/search`                    | Advanced search with body           |
| GET    | `/api/stats`                            | Database statistics                 |
| GET    | `/api/history`                          | Last 10 search queries              |

### Search Request Body (POST /api/advice/search)
```json
{
  "keyword": "anxiety",
  "category": "Stress Management",
  "urgencyLevel": "HIGH",
  "difficulty": "BEGINNER"
}
```

---

## 🗄️ H2 Console
- URL: `http://localhost:8080/h2-console`
- JDBC URL: `jdbc:h2:mem:lifeadvicedb`
- Username: `admin`
- Password: `admin123`

---

## 🏗️ Project Structure

```
life-advice-app/
├── pom.xml
└── src/main/
    ├── java/com/lifeadvice/
    │   ├── LifeAdviceApplication.java     ← Main class
    │   ├── model/
    │   │   ├── Category.java              ← Category entity
    │   │   ├── LifeAdvice.java            ← Advice entity (Q&A)
    │   │   └── UserQuery.java             ← Search log entity
    │   ├── repository/
    │   │   ├── CategoryRepository.java
    │   │   ├── LifeAdviceRepository.java  ← Custom JPQL queries
    │   │   └── UserQueryRepository.java
    │   ├── service/
    │   │   └── LifeAdviceService.java     ← Business logic
    │   ├── controller/
    │   │   └── LifeAdviceController.java  ← REST endpoints
    │   └── dto/
    │       ├── AdviceResponse.java
    │       ├── CategoryResponse.java
    │       ├── SearchRequest.java
    │       └── ApiResponse.java           ← Generic wrapper
    └── resources/
        ├── application.properties         ← H2 + JPA config
        ├── data.sql                       ← 39 advice entries, 12 categories
        └── static/
            └── index.html                 ← Single-page UI
```
