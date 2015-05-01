docker run --name='activemq' -d -e 'ACTIVEMQ_ADMIN_PASSWORD=password' -e 'ACTIVEMQ_USER_LOGIN=login' -e 'ACTIVEMQ_USER_PASSWORD=password' -e 'ACTIVEMQ_WRITE_LOGIN=producer_login' -e 'ACTIVEMQ_WRITE_PASSWORD=producer_password' -e 'ACTIVEMQ_READ_LOGIN=consumer_login' -e 'ACTIVEMQ_READ_PASSWORD=consumer_password' -e 'ACTIVEMQ_JMX_LOGIN=jmx_login' -e 'ACTIVEMQ_JMX_PASSWORD=jmx_password' -e 'ACTIVEMQ_STATIC_TOPICS=topic1;topic2;topic3' -e 'ACTIVEMQ_STATIC_QUEUES=queue1;queue2;queue3' -v /data/activemq:/data/activemq -v /var/log/activemq:/var/log/activemq webcenter/activemq
