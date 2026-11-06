# 📚 Flutter Book Carousel UI

## 📖 Project Overview

The **Book Carousel UI** is a Flutter application that displays a collection of books in a horizontally scrollable carousel layout. It features an elegant dark-themed interface with book cover images, book titles, and price tags.

Users can browse through the available books by scrolling horizontally or by clicking the forward arrow button to navigate through the carousel.

This project demonstrates the use of Flutter widgets to create a simple, attractive, and responsive book browsing interface.

## ✨ Features

- **Dark Theme UI:** Clean black background with white text for a modern appearance.
- **Horizontal Book Carousel:** Displays multiple books in a horizontally scrollable layout.
- **Book Cover Images:** Displays book covers with rounded corners.
- **Book Titles:** Shows book names below their respective images.
- **Price Tags:** Displays individual book prices using styled rounded containers.
- **Navigation Button:** Forward arrow button to smoothly scroll through the book collection.
- **Smooth Scrolling:** Uses `ScrollController` and `animateTo()` for smooth carousel navigation.
- **Error Handling:** Displays a default book icon if an image fails to load.
- **Reusable Widgets:** Uses Flutter's `ListView.builder` to dynamically display book details.

## 🛠️ Technologies Used

- Flutter
- Dart
- Material Design
- StatefulWidget
- ListView.builder
- ScrollController
- Image.asset
- BoxDecoration
- ClipRRect

## 📂 Project Structure

```text
book_carousel/
│
├── lib/
│   ├── main.dart
│   └── book_screen.dart
│
├── images/
│   ├── every.jpg
│   ├── phycology.jpg
│   ├── the_mind.jpg
│   ├── zara.jpg
│   ├── think.jpg
│   └── hurt.jpg
│
├── pubspec.yaml
└── README.md
```

## 🚀 How to Run the Project

1. Clone the repository:

```bash
git clone <your-repository-url>
```

2. Navigate to the project directory:

```bash
cd book_carousel
```

3. Install dependencies:

```bash
flutter pub get
```

4. Run the application:

```bash
flutter run
```

## 🎯 Learning Objectives

Through this project, I practiced:

- Building layouts using Flutter widgets.
- Creating horizontally scrollable interfaces.
- Managing scrolling with `ScrollController`.
- Implementing button-based navigation.
- Displaying dynamic content using lists and maps.
- Styling images, text, and price containers.
- Handling image loading errors.

## 👩‍💻 Developed With

**Flutter & Dart**

A simple Book Carousel UI project developed to practice Flutter UI design, widget composition, and horizontal scrolling functionality."# Book-Carosel" 
