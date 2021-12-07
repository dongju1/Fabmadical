host="fabmedical-ed2.mongo.cosmos.azure.com"
username="fabmedical-ed2"
password="nhQ0qWkyJDnNFtZXxwv5b9tLjaETHnVEOtVqGHjLUnIIAAUVQ3eba6zODHdtLF3iFAhbQNBxPHEnoMwNy3PxCQ=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
