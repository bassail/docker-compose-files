echo "##### Mongodump";
docker exec install_wikidb_1 mongodump --out /data/db/backup/"$(date '+%Y-%m-%d')"_wikijs_data/;
echo "##### Copy dump";
mv /home/$USER/tools/wikijs/data/data/backup/"$(date '+%Y-%m-%d')"_wikijs_data /home/$USER/tools/backup/wikijs/ ;
echo "##### Changing rights";
chown -R $USER:$USER /home/$USER/tools/backup/wikijs/"$(date '+%Y-%m-%d')"_wikijs_data
