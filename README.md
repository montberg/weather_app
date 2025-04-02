# Weather Application 

A Flutter implementation of Xiaomi's Weather App using Clean Architecture and MVVM pattern.

![Project Status](https://img.shields.io/badge/status-in%20development-yellow) 
![Flutter Version](https://img.shields.io/badge/flutter-3.19.2-blue)

## 📌 Project Status
**Currently in planning phase** - Working on base logic

## 🛠️ Technical Stack

### 📦 Dependency Injection
- **get_it** + **provider** for service location and dependency management

### 🚦 Routing
- **auto_route** for type-safe routing and navigation

### 🌐 Networking
- **dio** + **retrofit** for REST API communication
- **json_annotation** for JSON serialization
- **html** for HTML parsing

### 🧠 State Management
- **flutter_mobx** + **mobx** for reactive state management

### 💾 Data Persistence
- **shared_preferences** for local storage
- **custom state** for runtime data storage

## 🏗️ Architecture
Clean Architecture with MVVM pattern:

```
┌───────────────────────┐
│  Presentation Layer   │
│    (UI + ViewModels)  │
└───────────┬───────────┘
            │
            ▼
┌───────────────────────┐
│    Domain Layer       │
│ (Entities + Use Cases)│
└───────────┬───────────┘
            │
            ▼
┌───────────────────────┐
│     Data Layer        │
│(Repositories + Models)│
└───────────────────────┘
```

## 📋 Planned Features
- [ ] Multi-language support
- [ ] Customizable themes
