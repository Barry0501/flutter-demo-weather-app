# Basic Weather Flutter

This is a boilerplate project mobile app built with Clean Architecture and MVVM.
The source code structure is built with the criteria that it can be upgraded to Micro Front-End architecture if the scope of the project expands.

This repository contains all source code flutter for the project.

-  Language: Dart
-  Flutter: stable 3.13.7
- IDE:  Visual Code / Android Studio
- Device Orientation: Portrail (primary)
- Standard design: iPhone SE 
- flavor: not set up

# Architecture

Apply Clean Architecture + MVVM (with BloC used to replace the traditional ViewModel).

```
|-----------------  Layers  ------------------|
| Presentations  |  Doamin     |   Data Layer |
|:-------------------------------------------:|

|--------------------------  Actual  ---------------------------|
| Presentations  |        Doamin          |         Data        |
|:-------------------------------------------------------------:|
|  UI <--> ViewModel <--> UseCase <--> Repository <--> API/Local|
|:-------------------------------------------------------------:|
|:----       Entity         ----|----       Model      --------:|
|:-------------------------------------------------------------:|
```
![image](https://user-images.githubusercontent.com/13028582/186032061-21c60ce0-da97-45e0-9e2e-15f9f6fc89d2.png)


### UI
- This is the main interface of the application. It is classified into 3 main categories as:
   - Screen
   - Epic
   - Shared UI
- UI Layout can be Stateless or Stateful depending on its intended use and scope.
- UI Layout listens to the State that BloC sends and displays based on that data
- With Shared UI, it is located in the `presentation/shared/` folder. Depending on the purpose of use, it comes with a BloC (grouped in a feature folder) or is only placed individually and uses a certain Shared BloC.

### BloC
- It aims to handle business logic for a specific view such as validation, retrieve data, ...
- BloC uses use-case to retrieve data or handle domain business logic
- BloC listens to events from UI Layout -> handles logic and returns results to UI Layout with specific State

### UseCase
- It's the main layer to handle all data business
- It's a stateless layer, so it will be constructed on demand
- A use-case usually handle one use-case of a specific epic
- A use-case can communicate with other use-cases
- All use-case **MUST** be defined with an interface (abstract class), use-case communicate with view-model through by the interface 
- Constructor in UseCases class (DI class)

### Repository
- It's imported from local framework project name *Repository*
- The main data source of app that is used by service layer
- It's a stateless layer, so it will be constructed on demand
- It contains a little bit business rules to branch data source that should be used, from client or dao
- It also handle the caching logic rules, from memory or local storage
- All repositories **MUST** be defined with an interface (abstract class), service communicate with repository through by the interface 
- Constructor in Repository class (DI class)

### API/Dao
- It's data source layer, client means data is from RestFul API and Dao/LocalStorage means data is from local storage
- API is advanced class to handle all generic calling API, retry when access token is expired and need to refresh, also for general API error handling
- Dao/LocalStorage is advanced class to handle the generic storage, save/get list or item, or even for a string or an integer

### Model
- It covers all entities in app
- Have 2 kind of models, entity and model.
- Model is belong to repository, it defines all entity's properties and support basic parsing with JSON
- Entity is belong to UI layer, it defines all utility methods of an entity

## Dependencies Injection
- There are kinds of class to support construct instance for DI là Service, BloC, UseCases Repository,...
- Simple direct Service Locator that allows to decouple the interface from a concrete implementation and to access the concrete implementation from everywhere in your App


**Technology stack details**

|                      |                                                                                                                                                                                  |
| -------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| State management     | `flutter_bloc`<br>Flutter Widgets that make it easy to implement the BLoC (Business Logic Component) design pattern. Built to be used with the bloc state management package.         |
| Reactive programming | RxDart is an implementation of the popular reactiveX api for asynchronous programming, leveraging the native Dart Streams api.                                                 |
 Networking           | `retrofit`<br>retrofit.dart is an dio client generator using source_gen and inspired by Chopper and Retrofit.                                                                         |
| Dependency injection | `get_it`<br>Simple direct Service Locator that allows to decouple the interface from a concrete implementation and to access the concrete implementation from everywhere in your App” |                  



# Features
- [x] Location Input: Users should be able to input a location (e.g., city name or zip code).
- [x] Weather Display: Upon entering a location, the app should fetch and display the current weather information 
 - [x] Error Handling: Implement basic error handling for cases where the location input is invalid or the weather data cannot be retrieved.
 - [x] Flutter lint
 - [x] Theme dark mode
 - [x] Communicate Cross domain (MultiBlocProvicer)
 - [x] Support dependency_injection cross domain use to `lib/core/components/dependency_injection/di.dart` 
