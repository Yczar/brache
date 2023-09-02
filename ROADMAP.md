# Branche Roadmap

This document outlines the intended development milestones and features for the Branche library, a 2D graphics and animation library for Dart.

## Table of Contents

- [1. Introduction](#1-introduction)
- [2. Milestones](#2-milestones)
  - [2.1 Initial Setup](#21-initial-setup)
  - [2.2 Basic Rendering & Shapes](#22-basic-rendering--shapes)
  - [2.3 Advanced Rendering & Transformations](#23-advanced-rendering--transformations)
  - [2.4 User Interactions](#24-user-interactions)
  - [2.5 Animations](#25-animations)
- [3. Future Considerations](#3-future-considerations)

## 1. Introduction

Branche is designed to offer a simple yet powerful interface for web-based 2D graphics rendering using Dart. Its core objectives include efficient rendering, ease of use, and a rich set of features.

## 2. Milestones

### 2.1 Initial Setup

- [x] Setup basic Dart package structure.
- [x] Define the `BaseRenderer` abstract class.
- [x] Implement `CanvasRenderer` for basic shape rendering.

### 2.2 Basic Rendering & Shapes

- [x] Implement core shapes: `Circle`, `Rectangle`, `Ellipse`, `Square`, `Triangle`, `Line`, `Point`, and `Polygon`.
- [x] Implement scene management and rendering with the `Scene` class.
- [x] Create utility functions for shape and scene creation.

### 2.3 Advanced Rendering & Transformations

- [x] Implement advanced shapes: `Path`, `BezierCurve`, `QuadraticCurve`.
- [x] Implement shape groupings and buffers.
- [x] Implement transformed shapes: `RotatedShape`, `ScaledShape`, and `TranslatedShape`.
- [x] Extend `CanvasRenderer` with methods like `save()`, `restore()`, `rotate()`, `scale()`, and `translate()`.

### 2.4 User Interactions

- [x] Implement UI components: `Button` and `Slider`.
- [x] Extend shapes with interaction capabilities, such as the `containsPoint` method in `Rectangle`.
- [ ] Implement event listeners for shapes to handle interactions like clicks, drags, etc.

### 2.5 Animations

- [x] Implement the `AnimatedRectangle` for basic animation demonstration.
- [ ] Implement a generic `Animation` class to animate any shape properties.
- [ ] Provide ease-in, ease-out, and other animation curve options.
- [ ] Allow chaining animations for complex animation sequences.

## 2.6 CLI Tooling

### 2.6.1 Introduction of Branche CLI

- [ ] Implement a Branche CLI tool.
- [ ] Provide global access to the CLI tool after package installation.

### 2.6.2 Project Management with the CLI

- [ ] Add a command to create a new Branche project with boilerplate code: `branche create <project_name>`.
- [ ] Add a command to run a Branche project: `branche run <project_name_or_path>`.
- [ ] Provide a help command: `branche --help` or `branche -h` to guide users on available commands and their usage.

### 2.6.3 Additional CLI Actions

- [ ] Add a command to compile and build a Branche project for production: `branche build <project_name_or_path>`.
- [ ] Integrate commands to manage scenes, shapes, and animations. For example:
  - `branche add scene <scene_name>`: Adds a new scene to the project.
  - `branche list shapes`: Lists all shapes in the current scene.
  - `branche animate <shape_name> --property=<property_name> --duration=<duration>`: Initiates an animation on a specific shape.
- [ ] Implement a plugin or extension system, allowing third-party developers to add additional commands or functionality to the Branche CLI.
- [ ] Provide verbose and quiet mode flags for detailed or minimal console output: `branche --verbose` and `branche --quiet`.

### 2.6.4 Continuous Integration and Testing

- [ ] Allow Branche CLI to integrate with popular CI/CD tools, facilitating automated testing and deployment of Branche projects.
- [ ] Implement a command to run unit tests on a Branche project: `branche test <project_name_or_path>`.

## 3. Future Considerations

- Implement other renderers, e.g., WebGL renderer for better performance in complex scenes.
- Introduce sprite sheet support for game development.
- Consider integration with popular game engines or physics libraries.
- Explore potential optimizations and performance improvements.
