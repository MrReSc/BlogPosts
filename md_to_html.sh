#!/bin/bash
find . -type f -name "*.md" -exec pandoc -o "{}".html "{}" \;