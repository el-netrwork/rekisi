-- https://zenn.dev/slowhand/articles/209699774226af

-- 1. テーブルを作成
create table logs (
  id bigint primary key generated always as identity,
  app_name VARCHAR(128) NOT NULL,
  level VARCHAR(128) NOT NULL,
  info TEXT NOT NULL,
  created_at timestamp default now(),
  updated_at timestamp default now()
);

-- 2. RLSを有効化
--alter table logs
--  enable row level security;

-- 3. ポリシーを作成
create policy "Public logs are viewable by everyone."
  on logs for select using (
    true
  );