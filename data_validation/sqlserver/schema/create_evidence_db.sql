CREATE DATABASE QE_Evidence;
GO
USE QE_Evidence;
GO

CREATE TABLE dbo.test_run (
  run_id INT IDENTITY(1,1) PRIMARY KEY,
  run_ts DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
  suite_name VARCHAR(100) NOT NULL,
  environment VARCHAR(50) NOT NULL,
  triggered_by VARCHAR(50) NULL
);

CREATE TABLE dbo.test_result (
  result_id INT IDENTITY(1,1) PRIMARY KEY,
  run_id INT NOT NULL,
  test_id VARCHAR(200) NOT NULL,
  test_type VARCHAR(50) NOT NULL, -- UI/API/PERF/DB
  status VARCHAR(10) NOT NULL,    -- PASS/FAIL
  details VARCHAR(4000) NULL,
  created_ts DATETIME2 NOT NULL DEFAULT SYSUTCDATETIME(),
  CONSTRAINT fk_test_run FOREIGN KEY (run_id) REFERENCES dbo.test_run(run_id)
);