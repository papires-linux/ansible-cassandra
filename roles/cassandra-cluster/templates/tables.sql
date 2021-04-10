CREATE KEYSPACE IF NOT EXISTS simulacao WITH REPLICATION = { 'class' : 'NetworkTopologyStrategy', 'datacenter1' : 3 };

ALTER KEYSPACE "simulacao" WITH REPLICATION =
  { 'class' : 'SimpleStrategy', 'replication_factor' : 3 };

CREATE TABLE simulacao.modelo_table(
   id UUID PRIMARY KEY, 
   coluna01 text, 
   coluna02 text 
);

