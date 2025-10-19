-- ===========================================================
-- 📚 SQL ASSIGNMENT – USER & PRIVILEGES MANAGEMENT
-- ===========================================================
-- This script covers the following tasks:
-- 1️⃣ Drop an index named IdxPhone from customers table
-- 2️⃣ Create a user 'bob' with a secure password
-- 3️⃣ Grant INSERT privileges to 'bob' on salesDB
-- 4️⃣ Change 'bob' password to a new one
-- ===========================================================


-- ===========================================================
-- 🗑️ QUESTION 1: Drop an index named 'IdxPhone' from 'customers'
-- ===========================================================
-- The DROP INDEX command removes a specific index from a table.
-- This helps when restructuring indexes or optimizing performance.

DROP INDEX IdxPhone ON customers;


-- ===========================================================
-- 👤 QUESTION 2: Create a user 'bob' with password 'S$cu3r3!'
-- ===========================================================
-- 'localhost' restriction ensures that 'bob' can only connect
-- from the local machine, enhancing security.

CREATE USER 'bob'@'localhost' IDENTIFIED BY 'S$cu3r3!';


-- ===========================================================
-- 🔑 QUESTION 3: Grant INSERT privilege on salesDB to 'bob'
-- ===========================================================
-- This allows 'bob' to insert records into all tables
-- within the salesDB database.

GRANT INSERT ON salesDB.* TO 'bob'@'localhost';


-- ===========================================================
-- 🔐 QUESTION 4: Change the password for user 'bob'
-- ===========================================================
-- The ALTER USER command updates the user’s password safely.

ALTER USER 'bob'@'localhost' IDENTIFIED BY 'P$55!23';


-- ===========================================================
-- ✅ VERIFICATION SECTION (Optional)
-- ===========================================================
-- Show all users (requires admin privileges)
-- SHOW GRANTS FOR 'bob'@'localhost';
-- SELECT User, Host FROM mysql.user;

-- ===========================================================
-- 🚀 END OF ASSIGNMENT
-- ===========================================================
