SELECT http_requests.controller,
  http_requests.action,
  http_requests.http_referer,
  http_requests.http_user_agent,
  http_requests.http_request_uri,
  http_requests.remote_ip,
  http_requests.created_at,
  http_requests.session_id,
  http_requests.completed_at,
  http_requests.port,
  http_requests.user_id,
  http_requests.worker,
  http_requests.vizql_session,
  http_requests.user_ip,
  http_requests.currentsheet,
  http_requests.site_id
FROM http_requests;