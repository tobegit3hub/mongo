-- 统计用户总数
SELECT COUNT(*) AS total_users
FROM public.accounts;

-- 统计活跃用户总数
SELECT COUNT(*) AS active_users
FROM public.accounts
WHERE status = 'active';

-- 统计每个租户的用户数量
SELECT tenant_id, COUNT(*) AS user_count
FROM public.accounts
JOIN public.tenant_account_joins ON accounts.id = tenant_account_joins.account_id
GROUP BY tenant_id;

-- 统计每个租户的应用数量
SELECT tenant_id, COUNT(*) AS app_count
FROM public.installed_apps
GROUP BY tenant_id;

-- 统计总的API请求次数
SELECT COUNT(*) AS total_api_requests
FROM public.api_requests;

-- 统计每个租户的API请求次数
SELECT tenant_id, COUNT(*) AS api_request_count
FROM public.api_requests
GROUP BY tenant_id;

-- 统计每个应用的对话数量
SELECT app_id, COUNT(*) AS conversation_count
FROM public.conversations
GROUP BY app_id;

-- 统计消息总数
SELECT COUNT(*) AS total_messages
FROM public.messages;

-- 统计每个应用的消息数量
SELECT app_id, COUNT(*) AS message_count
FROM public.messages
GROUP BY app_id;

-- 统计每个数据集的文档数量
SELECT dataset_id, COUNT(*) AS document_count
FROM public.documents
GROUP BY dataset_id;

-- 统计每个工作流的运行次数
SELECT workflow_id, COUNT(*) AS workflow_run_count
FROM public.workflow_runs
GROUP BY workflow_id;
