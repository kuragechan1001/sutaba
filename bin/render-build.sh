#!/usr/bin/env bash
set -e

# Rubyの依存関係をインストール
bundle install

# アセットのプリコンパイル（JSやCSSなど）
bundle exec rake assets:precompile

# DBマイグレーション（本番環境用）
bundle exec rake db:migrate
