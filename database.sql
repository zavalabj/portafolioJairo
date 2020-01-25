CREATE DATABASE projects;
USE projects;

CREATE TABLE projects(
    id_project INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title TEXT NOT NULL,
    project_description BLOB NOT NULL,
    src_evidence_image TEXT NOT NULL,
    code BLOB NOT NULL,
    conclusions BLOB NOT NULL
);