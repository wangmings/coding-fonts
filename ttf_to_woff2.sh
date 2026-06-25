#!/bin/bash
# 复制 ttf 到 woff2/，并行压缩，完成后删除原始 ttf
# 用法: bash convert_woff2.sh [并行数，默认4]
cd "/Users/mac/项目/我的字体/coding-fonts"

MAX_JOBS=${1:-4}

# 复制
mkdir -p woff2
cp ttf/*.ttf woff2/
TOTAL=$(ls woff2/*.ttf 2>/dev/null | wc -l | tr -d ' ')
echo "共 $TOTAL 个文件，并行数: $MAX_JOBS"
echo "开始时间: $(date '+%H:%M:%S')"
START_TIME=$(date +%s)

COUNT_FILE=$(mktemp)
echo "0" > "$COUNT_FILE"
export TOTAL COUNT_FILE

compress_one() {
    local f="$1"
    local base dst
    base="$(basename "$f" .ttf)"
    dst="${f%.ttf}.woff2"

    if [ -f "$dst" ]; then
        # 跳过已存在，仍然计数
        ( mkdir "${COUNT_FILE}.lock" 2>/dev/null || true
          n=$(cat "$COUNT_FILE"); n=$((n+1)); echo "$n" > "$COUNT_FILE"
          echo "[$n/$TOTAL] $base => SKIPPED"
          rm -rf "${COUNT_FILE}.lock"
        )
        return 0
    fi

    /usr/local/bin/woff2_compress "$f" 2>/dev/null
    if [ $? -eq 0 ] && [ -f "$dst" ]; then
        rm "$f"
        sz=$(ls -lh "$dst" | awk '{print $5}')
        ( while ! mkdir "${COUNT_FILE}.lock" 2>/dev/null; do :; done
          n=$(cat "$COUNT_FILE"); n=$((n+1)); echo "$n" > "$COUNT_FILE"
          echo "[$n/$TOTAL] $base => $sz"
          rm -rf "${COUNT_FILE}.lock"
        )
    else
        rm -f "$dst"
        ( while ! mkdir "${COUNT_FILE}.lock" 2>/dev/null; do :; done
          n=$(cat "$COUNT_FILE"); n=$((n+1)); echo "$n" > "$COUNT_FILE"
          echo "[$n/$TOTAL] $base => FAILED"
          rm -rf "${COUNT_FILE}.lock"
        )
    fi
}
export -f compress_one

# 并行处理（shellcheck 关闭 SC2038 警告：xargs 带-P 时文件名不含换行符是安全的）
if ls woff2/*.ttf >/dev/null 2>&1; then
    find woff2 -maxdepth 1 -name '*.ttf' -print0 | xargs -0 -P"$MAX_JOBS" -I{} bash -c 'compress_one "$@"' _ {}
fi

END_TIME=$(date +%s)
ELAPSED=$((END_TIME - START_TIME))
WOFF2_COUNT=$(find woff2 -maxdepth 1 -name '*.woff2' 2>/dev/null | wc -l | tr -d ' ')

echo ""
echo "=== 完成 ==="
echo "woff2 文件: $WOFF2_COUNT  耗时: $((ELAPSED/60)) 分 $((ELAPSED%60)) 秒"
echo "结束时间: $(date '+%H:%M:%S')"
rm -f "$COUNT_FILE"
rm -rf "${COUNT_FILE}.lock"
