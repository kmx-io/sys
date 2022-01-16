# E-mail server

## Setup

### 1. DNS
Point your MX records to your e-mail servers.
Zero is highest priority.

### 2. SPF
Setup a SPF record to tell which servers can send email for this domain.

### 3. DKIM
Generate a 1024 bit RSA private key.

Generate a public key from the private key.

Put the RSA public key into a DNS TXT record with DKIM formatting.

### 4. Rspamd
