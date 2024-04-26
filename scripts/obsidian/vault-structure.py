#!/usr/bin/env python3

import os

STRUCTURE = {
  "0. Inbox",
  "1. Planning",
  "2. Projects",
  "3. Topics"  
}

for folder in STRUCTURE:
  os.makedirs(folder, exist_ok=True)
  print(f"Created {folder}")

