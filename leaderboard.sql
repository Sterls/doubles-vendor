-- Doubles Vendor worldwide leaderboard (Supabase / Postgres).
-- Run once in the Supabase SQL editor, then put the project URL and the
-- publishable (anon) key into BOARD in index.html.
-- Everything it creates is named doubles_vendor_*, so it sits alongside other games in the same project.
-- It never drops or replaces anything; if a name is somehow taken, it stops with an error instead.
create table public.doubles_vendor_scores (
  id bigint generated always as identity primary key,
  pid uuid not null,
  name text not null check (char_length(name) between 1 and 16),
  score integer not null check (score between 1 and 1000000),
  loc smallint not null check (loc between 0 and 4),
  day integer not null check (day between 1 and 100000),
  created_at timestamptz not null default now()
);
create index doubles_vendor_scores_score_idx on public.doubles_vendor_scores (score desc);

alter table public.doubles_vendor_scores enable row level security;
-- Anyone can read the board and add a score; nobody can edit or delete from the game.
create policy "doubles vendor read scores" on public.doubles_vendor_scores for select to anon using (true);
create policy "doubles vendor add scores" on public.doubles_vendor_scores for insert to anon with check (true);
