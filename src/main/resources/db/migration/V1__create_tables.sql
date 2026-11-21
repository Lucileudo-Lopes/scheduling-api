-- Tabela de usuários (plural: "user" é palavra reservada no PostgreSQL)
CREATE TABLE users (
    id         BIGSERIAL    PRIMARY KEY,                -- chave primária auto-incrementada
    name       VARCHAR(120) NOT NULL,
    email      VARCHAR(160) NOT NULL UNIQUE,            -- UNIQUE: RN01 (e-mail único)
    password   VARCHAR(100) NOT NULL,                   -- guarda o hash BCrypt, nunca a senha
    role       VARCHAR(20)  NOT NULL,                   -- ADMIN, BARBER ou CUSTOMER
    created_at TIMESTAMP    NOT NULL DEFAULT now()
);