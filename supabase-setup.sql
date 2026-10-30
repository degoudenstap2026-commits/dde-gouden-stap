-- Voer dit eenmalig uit in Supabase > SQL Editor.
create table if not exists public.site_content (
  id bigint primary key,
  content jsonb not null
);
alter table public.site_content enable row level security;

-- Iedereen mag de website-inhoud lezen.
drop policy if exists "Public can read site content" on public.site_content;
create policy "Public can read site content"
on public.site_content for select to anon, authenticated using (true);

-- Alleen ingelogde beheerders mogen de inhoud wijzigen.
drop policy if exists "Authenticated admins can insert site content" on public.site_content;
create policy "Authenticated admins can insert site content"
on public.site_content for insert to authenticated with check (auth.uid() is not null);

drop policy if exists "Authenticated admins can update site content" on public.site_content;
create policy "Authenticated admins can update site content"
on public.site_content for update to authenticated using (auth.uid() is not null) with check (auth.uid() is not null);

insert into public.site_content (id, content)
values (1, '{}'::jsonb)
on conflict (id) do nothing;


-- Publieke opslag voor afbeeldingen die via het beheerpaneel worden geüpload.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values (
  'site-images',
  'site-images',
  true,
  8388608,
  array['image/jpeg','image/png','image/webp','image/gif','image/avif']
)
on conflict (id) do update
set public = true,
    file_size_limit = 8388608,
    allowed_mime_types = array['image/jpeg','image/png','image/webp','image/gif','image/avif'];

drop policy if exists "Public can view site images" on storage.objects;
create policy "Public can view site images"
on storage.objects for select
to anon, authenticated
using (bucket_id = 'site-images');

drop policy if exists "Authenticated users can upload site images" on storage.objects;
create policy "Authenticated users can upload site images"
on storage.objects for insert
to authenticated
with check (bucket_id = 'site-images');

drop policy if exists "Authenticated users can update site images" on storage.objects;
create policy "Authenticated users can update site images"
on storage.objects for update
to authenticated
using (bucket_id = 'site-images')
with check (bucket_id = 'site-images');

drop policy if exists "Authenticated users can delete site images" on storage.objects;
create policy "Authenticated users can delete site images"
on storage.objects for delete
to authenticated
using (bucket_id = 'site-images');
