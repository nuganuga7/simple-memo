create table public.memos (
id uuid primary key default gen_random_uuid(),
user_id uuid not null references auth.users(id),
content text not null check (length(btrim(content)) > 0),
created_at timestamptz not null default now()
);
create index memos_user_created on public.memos(user_id,created_at desc);
alter table public.memos enable row level security;
revoke all on public.memos from anon, authenticated;
grant select, insert, delete on public.memos to authenticated;
create policy memos_select_own on public.memos for select to authenticated using ((select auth.uid()) = user_id);
create policy memos_insert_own on public.memos for insert to authenticated with check ((select auth.uid()) = user_id);
create policy memos_delete_own on public.memos for delete to authenticated using ((select auth.uid()) = user_id);