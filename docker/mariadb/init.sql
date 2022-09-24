CREATE USER IF NOT EXISTS root@localhost IDENTIFIED BY 'rootpwd';
SET PASSWORD FOR root@localhost = PASSWORD('rootpwd');
GRANT ALL ON *.* TO root@localhost WITH GRANT OPTION;
CREATE USER IF NOT EXISTS root@'%' IDENTIFIED BY 'rootpwd';
SET PASSWORD FOR root@'%' = PASSWORD('rootpwd');
GRANT ALL ON *.* TO root@'%' WITH GRANT OPTION;

CREATE USER IF NOT EXISTS flowman_history@'%' IDENTIFIED BY 'flowman_history';
SET PASSWORD FOR flowman_history@'%' = PASSWORD('flowman_history');
CREATE DATABASE IF NOT EXISTS flowman_history;
GRANT ALL ON flowman_history.* TO flowman_history@'%';

CREATE USER IF NOT EXISTS flowman_metrics@'%' IDENTIFIED BY 'flowman_metrics';
SET PASSWORD FOR flowman_metrics@'%' = PASSWORD('flowman_metrics');
CREATE DATABASE IF NOT EXISTS flowman_metrics;
GRANT ALL ON flowman_metrics.* TO flowman_metrics@'%';

CREATE USER IF NOT EXISTS weather@'%' IDENTIFIED BY 'weather';
SET PASSWORD FOR weather@'%' = PASSWORD('weather');
CREATE DATABASE IF NOT EXISTS weather;
GRANT ALL ON weather.* TO weather@'%';

SET GLOBAL sql_mode = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION,ANSI_QUOTES';
