JDBC_IMPORTER_HOME=/opt/elasticsearch-jdbc-2.3.4.0
bin=$JDBC_IMPORTER_HOME/bin
lib=$JDBC_IMPORTER_HOME/lib
echo '{
    "type" : "jdbc",
    "jdbc" : {
        "url" : "jdbc:mysql://127.0.0.1:3306/trademark",
        "user" : "root",
        "password" : "",
        "sql" : "select * from t_flow",
        "index" : "flow",
        "type":"flow"
    }
}' | java \
         -cp "${lib}/*" \
         -Dlog4j.configurationFile=${bin}/log4j2.xml \
         org.xbib.tools.Runner \
         org.xbib.tools.JDBCImporter
