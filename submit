#!/bin/bash

# 使用方法: ./submit.sh abc380 a

if [ $# -ne 2 ]; then
  echo "使い方: $0 <コンテスト名> <問題番号>"
  echo "例:    $0 abc380 a"
  exit 1
fi

CONTEST="$1"
PROBLEM="$2"
TARGET_DIR="$CONTEST/$PROBLEM"

if [ ! -d "$TARGET_DIR" ]; then
  echo "エラー: ディレクトリ '$TARGET_DIR' は存在しません"
  exit 1
fi

cd "$TARGET_DIR" || exit 1
acc submit Main.java -- -l 5005