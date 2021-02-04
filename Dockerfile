FROM sarveshk29/sqlfluff_image

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]