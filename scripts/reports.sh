if [ ! -d "$KATALOG"]; then
echo "Błąd: katalog: '$KATALOG' nie istnieje" >&2
exit 1
fi

date +"%F %T"

du -sh "$KATALOG"/*/ 2>/dev/null | sort -h | tail -5

