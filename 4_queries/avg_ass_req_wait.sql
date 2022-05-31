-- We need to know the average amount of time that students are waiting for an 
-- assistance request. This is the duration between an assistance request being 
-- created, and it being started.

-- Instruction
-- Calculate the average time it takes to start an assistance request.

-- Return just a single column here.

SELECT AVG(started_at - created_at) as waiting_time 
FROM assistance_requests;
