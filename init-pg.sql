CREATE TABLE magic_api_file
(
    file_path    varchar(512) NOT NULL,
    file_content text, -- mediumtext 改为 text
    PRIMARY KEY (file_path)
);
CREATE TABLE magic_api_backup
(
    id          varchar(32) NOT NULL,     -- COMMENT 注释在 PostgreSQL 中使用 COMMENT ON 语法
    create_date bigint      NOT NULL,     -- bigint(13) 在 PostgreSQL 中等同于 bigint
    tag         varchar(32) DEFAULT NULL, -- COMMENT 在 PostgreSQL 中使用 COMMENT ON
    type        varchar(32) DEFAULT NULL,
    name        varchar(64) DEFAULT NULL,
    content     text,                     -- mediumtext 改为 text
    create_by   varchar(64) DEFAULT NULL,
    PRIMARY KEY (id, create_date)
);

-- 添加 COMMENT 注释（PostgreSQL 使用单独的 COMMENT ON 语句）
COMMENT
ON COLUMN magic_api_backup.id IS '原对象ID';
COMMENT
ON COLUMN magic_api_backup.create_date IS '备份时间';
COMMENT
ON COLUMN magic_api_backup.tag IS '标签';
COMMENT
ON COLUMN magic_api_backup.type IS '类型';
COMMENT
ON COLUMN magic_api_backup.name IS '原名称';
COMMENT
ON COLUMN magic_api_backup.content IS '备份内容';
COMMENT
ON COLUMN magic_api_backup.create_by IS '操作人';
CREATE TABLE magic_api_file
(
    file_path    varchar(512) NOT NULL,
    file_content text, -- mediumtext 改为 text
    PRIMARY KEY (file_path)
);
CREATE TABLE magic_api_backup
(
    id          varchar(32) NOT NULL,     -- COMMENT 注释在 PostgreSQL 中使用 COMMENT ON 语法
    create_date bigint      NOT NULL,     -- bigint(13) 在 PostgreSQL 中等同于 bigint
    tag         varchar(32) DEFAULT NULL, -- COMMENT 在 PostgreSQL 中使用 COMMENT ON
    type        varchar(32) DEFAULT NULL,
    name        varchar(64) DEFAULT NULL,
    content     text,                     -- mediumtext 改为 text
    create_by   varchar(64) DEFAULT NULL,
    PRIMARY KEY (id, create_date)
);

-- 添加 COMMENT 注释（PostgreSQL 使用单独的 COMMENT ON 语句）
COMMENT
ON COLUMN magic_api_backup.id IS '原对象ID';
COMMENT
ON COLUMN magic_api_backup.create_date IS '备份时间';
COMMENT
ON COLUMN magic_api_backup.tag IS '标签';
COMMENT
ON COLUMN magic_api_backup.type IS '类型';
COMMENT
ON COLUMN magic_api_backup.name IS '原名称';
COMMENT
ON COLUMN magic_api_backup.content IS '备份内容';
COMMENT
ON COLUMN magic_api_backup.create_by IS '操作人';
