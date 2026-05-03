# KimSystem AI CLI

KimSystem AI CLI is a specialized expert assistant for Arch Linux and the Hyprland window manager, powered by Gemini 2.0.

## Features
- **Arch Linux Specialist:** Expert in `pacman`, `yay`, `systemd`.
- **Hyprland Expert:** Control your environment via `hyprctl`.
- **YOLO Mode:** Automated command execution for efficiency.
- **Persistent Memory:** Learns and remembers your preferences.
- **Screenshot Support:** Grab screenshots directly from the CLI.

## Installation

### Prerequisites
- Python 3.8+
- Arch Linux (recommended)
- A Gemini API Key

### Setup
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/KimSystemAI.git
   cd KimSystemAI
   ```
2. Create and configure `.env`:
   ```bash
   cp .env.example .env
   # Edit .env and add your GEMINI_API_KEY
   ```
3. Install the package:
   ```bash
   pip install .
   ```

## Usage
Run the assistant directly:
```bash
kim "check my system disk space"
```

Or enter interactive mode:
```bash
kim
```
