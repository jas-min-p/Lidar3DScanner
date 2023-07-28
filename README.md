# LiDAR3DScanner

LiDAR3DScanner is a demo iOS application that utilizes the LiDAR capabilities of compatible devices to generate and export 3D models. With this app, you can scan your surroundings in real-time, create 3D models, and export them in popular file formats. Additionally, the app provides an immersive 3D viewer to visualize the exported models.

https://github.com/jas-min-p/Lidar3DScanner/assets/140845322/22cdfa7c-94eb-4f67-9483-5d47366c1c2c


## Features

- Real-time 3D scanning using LiDAR on supported iOS devices (e.g., iPhone 12 Pro and later).
- Mesh generation to convert the point cloud data into a 3D model.
- Export 3D models to obj file format
- 3D viewer to interactively visualize the exported models.

## Requirements

- An iOS device with LiDAR support (e.g., iPhone 12 Pro, iPhone 13 Pro).
- iOS 15.0 or later.

## Getting Started

To get started with the LiDAR3DScanner, follow these steps:

1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/jas-min-p/lidar3dscanner.git
   cd lidar3dscanner
2. Open the Xcode project:
   ```bash
   cd lidar3dscanner
   open LiDAR3DScanner.xcodeproj
3. Build and run the app on your iOS device.

## Usage
1. Launch the LiDAR3DScanner app on your LiDAR-enabled iOS device.
2. Point your device at the objects or surroundings you want to scan.
3. Move your device around to capture a complete 3D view of the scene.
4. Once the scanning is complete, press the "Save" button to convert the captured point cloud data into a 3D model.
5. You will be navigate to the "3D Viewer" section in the app. You can interactively rotate, pan, and zoom to explore the 3D model.

## Contributing
We welcome contributions to improve LiDAR3DScanner. Feel free to create issues for bug reports, feature requests, or questions. Pull requests are also appreciated.

## License
LiDAR3DScanner is open-source and available under the MIT License.

## Acknowledgments
- ARKit for providing LiDAR and 3D mesh capabilities.
- SceneKit for rendering the 3D models in the app.

