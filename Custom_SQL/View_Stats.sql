--View Stats
--Last tested on Tableau Server 10.3
SELECT "_views_stats"."users_id" AS "users_id",
  "_views_stats"."system_users_name" AS "system_users_name",
  "_views_stats"."users_login_at" AS "users_login_at",
  "_views_stats"."system_users_friendly_name" AS "system_users_friendly_name",
  "_views_stats"."views_id" AS "views_id",
  "_views_stats"."system_users_id" AS "system_users_id",
  "_views_stats"."views_name" AS "views_name",
  CAST("_views_stats"."views_url" AS TEXT) AS "views_url",
  "_views_stats"."views_workbook_id" AS "views_workbook_id",
  "_views_stats"."views_created_at" AS "views_created_at",
  "_views_stats"."views_owner_id" AS "views_owner_id",
  "_views_stats"."views_index" AS "views_index",
  CAST("_views_stats"."views_title" AS TEXT) AS "views_title",
  CAST("_views_stats"."views_caption" AS TEXT) AS "views_caption",
  CAST("_views_stats"."device_type" AS TEXT) AS "device_type",
  "_views_stats"."nviews" AS "nviews",
  "_views_stats"."last_view_time" AS "last_view_time",
  "_views_stats"."site_id" AS "site_id",
  "_workbooks"."id" AS "id",
  "_workbooks"."name" AS "name",
  CAST("_workbooks"."workbook_url" AS TEXT) AS "workbook_url",
  "_workbooks"."created_at" AS "created_at",
  "_workbooks"."updated_at" AS "updated_at",
  "_workbooks"."owner_id" AS "owner_id",
  "_workbooks"."project_id" AS "project_id",
  "_workbooks"."size" AS "size",
  "_workbooks"."view_count" AS "view_count",
  "_workbooks"."owner_name" AS "owner_name",
  "_workbooks"."project_name" AS "project_name",
  "_workbooks"."system_user_id" AS "system_user_id",
  "_workbooks"."site_id" AS "site_id (_workbooks)",
  "_workbooks"."domain_id" AS "domain_id",
  "_workbooks"."domain_name" AS "domain_name"
FROM "public"."_views_stats" "_views_stats"
  INNER JOIN "public"."_workbooks" "_workbooks" ON ("_views_stats"."views_workbook_id" = "_workbooks"."id")