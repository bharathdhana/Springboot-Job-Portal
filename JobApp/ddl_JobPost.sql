CREATE TABLE job_post
(
    post_id        INT          NOT NULL,
    post_profile   VARCHAR(255) NULL,
    post_desc      VARCHAR(255) NULL,
    req_experience INT          NOT NULL,
    post_tech_stack UNKNOWN__JAVA.UTIL.LIST<JAVA.LANG.STRING> NULL,
    CONSTRAINT pk_jobpost PRIMARY KEY (post_id)
);