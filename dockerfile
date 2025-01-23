FROM quay.io/debezium/connect:3.0.7.Final

RUN mkdir -p /kafka/connect/plugins/confluent

RUN curl -L https://packages.confluent.io/maven/io/confluent/kafka-connect-avro-converter/7.0.1/kafka-connect-avro-converter-7.0.1.jar -o /kafka/connect/plugins/confluent/kafka-connect-avro-converter-7.0.1.jar && \
    curl -L https://packages.confluent.io/maven/io/confluent/kafka-connect-avro-data/7.0.1/kafka-connect-avro-data-7.0.1.jar -o /kafka/connect/plugins/confluent/kafka-connect-avro-data-7.0.1.jar && \
    curl -L https://packages.confluent.io/maven/io/confluent/kafka-avro-serializer/7.0.1/kafka-avro-serializer-7.0.1.jar -o /kafka/connect/plugins/confluent/kafka-avro-serializer-7.0.1.jar && \
    curl -L https://packages.confluent.io/maven/io/confluent/kafka-schema-serializer/7.0.1/kafka-schema-serializer-7.0.1.jar -o /kafka/connect/plugins/confluent/kafka-schema-serializer-7.0.1.jar && \
    curl -L https://packages.confluent.io/maven/io/confluent/kafka-schema-converter/7.0.1/kafka-schema-converter-7.0.1.jar -o /kafka/connect/plugins/confluent/kafka-schema-converter-7.0.1.jar && \
    curl -L https://packages.confluent.io/maven/io/confluent/kafka-schema-registry-client/7.0.1/kafka-schema-registry-client-7.0.1.jar -o /kafka/connect/plugins/confluent/kafka-schema-registry-client-7.0.1.jar && \
    curl -L https://packages.confluent.io/maven/io/confluent/common-config/7.0.1/common-config-7.0.1.jar -o /kafka/connect/plugins/confluent/common-config-7.0.1.jar && \
    curl -L https://packages.confluent.io/maven/io/confluent/common-utils/7.0.1/common-utils-7.0.1.jar -o /kafka/connect/plugins/confluent/common-utils-7.0.1.jar

RUN curl -L https://repo1.maven.org/maven2/org/apache/avro/avro/1.10.2/avro-1.10.2.jar -o /kafka/connect/plugins/confluent/avro-1.10.2.jar && \
    curl -L https://repo1.maven.org/maven2/com/google/guava/guava/30.1.1-jre/guava-30.1.1-jre.jar -o /kafka/connect/plugins/confluent/guava-30.1.1-jre.jar && \
    curl -L https://repo1.maven.org/maven2/org/apache/commons/commons-compress/1.21/commons-compress-1.21.jar -o /kafka/connect/plugins/confluent/commons-compress-1.21.jar && \
    curl -L https://repo1.maven.org/maven2/com/google/code/findbugs/annotations/3.0.1/annotations-3.0.1.jar -o /kafka/connect/plugins/confluent/annotations-3.0.1.jar && \
    curl -L https://repo1.maven.org/maven2/org/slf4j/slf4j-api/1.7.30/slf4j-api-1.7.30.jar -o /kafka/connect/plugins/confluent/slf4j-api-1.7.30.jar && \
    curl -L https://repo1.maven.org/maven2/org/snakeyaml/snakeyaml/1.29/snakeyaml-1.29.jar -o /kafka/connect/plugins/confluent/snakeyaml-1.29.jar && \
    curl -L https://repo1.maven.org/maven2/org/swagger/swagger-annotations/1.6.0/swagger-annotations-1.6.0.jar -o /kafka/connect/plugins/confluent/swagger-annotations-1.6.0.jar && \
    curl -L https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-databind/2.12.4/jackson-databind-2.12.4.jar -o /kafka/connect/plugins/confluent/jackson-databind-2.12.4.jar && \
    curl -L https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-core/2.12.4/jackson-core-2.12.4.jar -o /kafka/connect/plugins/confluent/jackson-core-2.12.4.jar && \
    curl -L https://repo1.maven.org/maven2/com/fasterxml/jackson/core/jackson-annotations/2.12.4/jackson-annotations-2.12.4.jar -o /kafka/connect/plugins/confluent/jackson-annotations-2.12.4.jar && \
    curl -L https://repo1.maven.org/maven2/com/fasterxml/jackson/dataformat/jackson-dataformat-csv/2.12.4/jackson-dataformat-csv-2.12.4.jar -o /kafka/connect/plugins/confluent/jackson-dataformat-csv-2.12.4.jar
