services
postgresPreparedStatementSample

self dbConnection executeAll: #(
'PREPARE test1 (text,text,integer,text) AS
     INSERT INTO films (code, title, did, kind)
     VALUES ($1,$2,$3,$4)'
'EXECUTE test1(''T_601'', ''Yojimbo'', 106, ''Drama'')'
).
