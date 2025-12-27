#!/usr/bin/env bash
set -e

# Rubyの依存関係をインストール
bundle install

# アセットのプリコンパイル（JSやCSSなど）
# secret_key_baseが必要なため、ダミー値を設定（既に設定されている場合はそれを使用）
export SECRET_KEY_BASE=${SECRET_KEY_BASE:-dummy_secret_key_base_for_asset_precompilation_only}
bundle exec rake assets:precompile

bundle exec rake assets:clean

# DBマイグレーション（本番環境用）
bundle exec rake db:migrate
