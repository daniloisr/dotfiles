# Ref: https://stackoverflow.com/a/42544963/1042324
# Excrude files present in HEAD
# | grep -vF "$(git ls-tree -r HEAD | awk '{print $3}')" \

# Show only files exceeding given size (e.g. 1 MiB = 2^20 B), insert the following line:
# | awk '$2 >= 2^20' \

git rev-list --objects --all \
| grep -vF "$(git ls-tree -r HEAD | awk '{print $3}')" \
| git cat-file --batch-check='%(objecttype) %(objectname) %(objectsize) %(rest)' \
| awk '/^blob/ {print substr($0,6)}' \
| sort --numeric-sort --key=2 \
| cut --complement --characters=13-40 \
| numfmt --field=2 --to=iec-i --suffix=B --padding=7 --round=nearest
