-- migrate:up


CREATE TABLE stripe.payouts (
    id text primary key,
    object text,
    date text,
    type text,
    amount bigint,
    method text,
    status text,
    created integer,
    updated integer,
    currency text,
    livemode boolean,
    metadata jsonb,
    automatic boolean,
    recipient text,
    description text,
    destination text,
    source_type text,
    arrival_date text,
    bank_account jsonb,
    failure_code text,
    transfer_group text,
    amount_reversed bigint,
    failure_message text,
    source_transaction text,
    balance_transaction text,
    statement_descriptor text,
    statement_description text,
    failure_balance_transaction text
);


-- migrate:down

drop table "stripe"."payouts";