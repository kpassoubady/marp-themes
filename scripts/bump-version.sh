#!/usr/bin/env bash
set -euo pipefail

# Usage: ./scripts/bump-version.sh v17
# Updates CDN tag references in README.md and term-chair/README.md

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <new-tag> (e.g. v17)"
  exit 1
fi

NEW_TAG="$1"
if [[ ! "$NEW_TAG" =~ ^v[0-9]+$ ]]; then
  if [[ "$NEW_TAG" =~ ^[0-9]+$ ]]; then
    NEW_TAG="v$NEW_TAG"
  else
    echo "Error: Tag must be in 'vN' format (e.g., v17)"
    exit 1
  fi
fi

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

CURRENT_TAG=$(grep -oE 'marp-themes@v[0-9]+' "$REPO_ROOT/README.md" | head -n 1 | cut -d'@' -f2 || true)

if [ -z "$CURRENT_TAG" ]; then
  echo "Error: Could not determine current tag from README.md"
  exit 1
fi

echo "Current tag in README: $CURRENT_TAG"
echo "Target tag:            $NEW_TAG"

if [ "$CURRENT_TAG" = "$NEW_TAG" ]; then
  echo "Target tag matches current tag ($CURRENT_TAG). Nothing to bump."
  exit 0
fi

# Update README.md
sed -i '' -E "s|marp-themes@$CURRENT_TAG|marp-themes@$NEW_TAG|g" "$REPO_ROOT/README.md"
sed -i '' -E "s|current tag is $CURRENT_TAG|current tag is $NEW_TAG|g" "$REPO_ROOT/README.md"
sed -i '' -E "s|\`@$CURRENT_TAG\`|\`@$NEW_TAG\`|g" "$REPO_ROOT/README.md"

# Update term-chair/README.md
sed -i '' -E "s|marp-themes@v[0-9]+|marp-themes@$NEW_TAG|g" "$REPO_ROOT/term-chair/README.md"

echo "Updated CDN references in:"
echo " - README.md"
echo " - term-chair/README.md"
echo ""
echo "Next steps:"
echo " 1. Record notes in CHANGELOG.md under [$NEW_TAG]."
echo " 2. Commit: git commit -am \"docs: bump CDN references to $NEW_TAG\""
echo " 3. Tag:    git tag $NEW_TAG"
echo " 4. Push:   git push origin main && git push origin $NEW_TAG"
