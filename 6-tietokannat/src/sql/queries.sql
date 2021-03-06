-- name: test_db_connection

SELECT 3 + 2;

-- name: all_todos

SELECT todo FROM todo;

-- name: new_todo

INSERT INTO todo(todo) VALUES(%(todo)s);
SELECT currval('todo_id_seq');

-- name: newest_todo

SELECT todo, ts FROM todo
ORDER BY ts DESC LIMIT 1;

