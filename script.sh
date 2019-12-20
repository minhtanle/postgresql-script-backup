#!/bin/bash

# Backup a Postgresql database

BACKUP_DIR=/usr/src/
DAYS_TO_KEEP=5
FILE_SUFFIX=_psql_backup.sql
DATABASE=db2019
USER=user2019
PASSWORD=password1234567

FILE=`date +"%Y%m%d_%H%M%S"`_${DATABASE}${FILE_SUFFIX}

OUTPUT_FILE=${BACKUP_DIR}/${FILE}

# do the database backup (dump)
# use this command for dump and zip
PGPASSWORD=${PASSWORD} pg_dump -Fc -U ${USER} ${DATABASE} -f ${OUTPUT_FILE}

# remove old backups
find $BACKUP_DIR -maxdepth 1 -mtime +$DAYS_TO_KEEP -name "*${FILE_SUFFIX}" -exec rm -rf '{}' ';'
