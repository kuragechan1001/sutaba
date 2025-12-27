#!/usr/bin/env bash
set -e

# secret_key_baseが必要なため、最初にダミー値を設定（既に設定されている場合はそれを使用）
export SECRET_KEY_BASE=${SECRET_KEY_BASE:-dummy_secret_key_base_for_asset_precompilation_only}

# Rubyの依存関係をインストール
bundle install

# アセットのプリコンパイル（JSやCSSなど）
bundle exec rake assets:precompile

# DBマイグレーション（本番環境用）
bundle exec rake db:migrate
