/*
Copyright SecureKey Technologies Inc. All Rights Reserved.

SPDX-License-Identifier: Apache-2.0
*/

\! echo "Configuring MySQL users...";

-- Hydra (RP Adapter)
CREATE USER 'rpadapterhydra'@'%' IDENTIFIED BY 'secret';
CREATE DATABASE rpadapter_hydra;
GRANT ALL PRIVILEGES ON rpadapter_hydra.* TO 'rpadapterhydra'@'%';

/*
RP Adapter
*/
CREATE USER 'rpadapter'@'%' IDENTIFIED BY 'rpadapter-secret-pw';
GRANT ALL PRIVILEGES ON `rpadapter\_%` . * TO 'rpadapter'@'%';

/*
Issuer Adapter
*/
CREATE USER 'issueradapter'@'%' IDENTIFIED BY 'issueradapter-secret-pw';
GRANT ALL PRIVILEGES ON `issueradapter\_%` . * TO 'issueradapter'@'%';

/*
Router
*/
CREATE USER 'hubrouter'@'%' IDENTIFIED BY 'hubrouter-secret-pw';
GRANT ALL PRIVILEGES ON * . * TO 'hubrouter'@'%';

/*
auth rest
*/
CREATE USER 'authrest'@'%' IDENTIFIED BY 'authrest-secret-pw';
GRANT ALL PRIVILEGES ON `authrest\_%` . * TO 'authrest'@'%';

/*
auth rest hydra
*/
CREATE USER 'authresthydra'@'%' IDENTIFIED BY 'authresthydra-secret-pw';
CREATE DATABASE authresthydra;
GRANT ALL PRIVILEGES ON authresthydra.* TO 'authresthydra'@'%';

/*
edge agent rest
*/
CREATE USER 'edgeagent'@'%' IDENTIFIED BY 'edgeagent-secret-pw';
CREATE DATABASE edgeagent_aries;
GRANT ALL PRIVILEGES ON `edgeagent\_%`.* TO 'edgeagent'@'%';
