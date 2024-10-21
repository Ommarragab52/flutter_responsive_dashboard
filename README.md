# Flutter Responsive & Adaptive Dashboard UI

A modern, responsive, and adaptive Flutter dashboard that works seamlessly across mobile, tablet, and desktop platforms.

## 📱 Features

- Fully responsive design that adapts to mobile, tablet, and desktop layouts
- Adaptive widgets that optimize for different screen sizes
- Responsive typography and spacing
- Clean architecture with reusable components


## 🛠️ Technical Implementation

### Responsive Design
- Implements three distinct layouts:
  - Mobile Layout
  - Tablet Layout
  - Desktop Layout
- Uses responsive breakpoints via `SizeConfig` utility
- Implements responsive font sizing

### Core Components
- Utilizes key Flutter responsive widgets:
  - `MediaQuery`
  - `LayoutBuilder`
  - `AspectRatio`
  - `ConstrainedBox`
  - `FittedBox`
  - `Expanded`
  - `Flexible`

### Sliver Implementation
- `SliverFillRemaining`
- `SliverList`
- Custom sliver widgets for optimized scrolling

### 📂 Project Structure

#### Core Utilities

- app_assets: Manages all asset paths

- app_styles: Contains text styles and themes

- app_colors: Defines color palette

- app_constants: Stores app-wide constants

- size_config: Handles responsive breakpoints

- Responsive Implementation

#### Breakpoints:

- Mobile: < 800px

- Tablet: < 1200px

- Desktop: > 1200px


#### Reusable Components

- Custom cards
- Responsive text widgets
- Adaptive containers
- Platform-specific widgets

## 📦 Packages Used

### UI & Responsive Design

- device_preview:  For testing different device sizes and orientations

- fl_chart: ^0.65.0 # Beautiful and responsive charts

### 🎯 Key Features Implemented

Responsive navigation drawer
Adaptive layout switching
Responsive data visualization
Cross-platform optimized UI elements
Reusable widget architecture

### 🛠️ Built With

- Flutter
- Dart
- Material Design

### 📱 Supported Platforms

- Android
- iOS
- Web
- Windows
- macOS
- Linux

### 📸 Screenshots


| iPhone 12 pro max | Samsung A50 |
|---------|--------|
|![iphone_12_pro_max](https://github.com/user-attachments/assets/b14060ec-1a91-46dc-8c05-a9bef4e8bb93)|![samsung_A50](https://github.com/user-attachments/assets/751a3e61-b159-4d64-b05e-72db8d01864a)|

| iPad | Tablet |
|------|--------|
|![ipad](https://github.com/user-attachments/assets/5cc95fc3-9f9e-4900-bdac-8a90c1af4677)|![tablet](https://github.com/user-attachments/assets/8f297e63-f209-4433-a36f-b307a34e01ef)|

| Desktop |
|---------|
|![mac_desktop](https://github.com/user-attachments/assets/a585b7e9-0a91-45f6-be17-7d20cdd245f3)|


