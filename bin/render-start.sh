#!/usr/bin/env bash
set -e

# データベースの準備（マイグレーション実行）
bundle exec rails db:prepare

# Pumaサーバーを起動
exec bundle exec puma -C config/puma.rb

