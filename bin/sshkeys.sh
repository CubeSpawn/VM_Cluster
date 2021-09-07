echo "if this prompts you to overwrite your local key, say no!"
ssh-keygen -t rsa -b 4096

#edit this section to have all the IPs EXCEPT the local one!
#comment the local one out of the pool

ssh-copy-id cubespawn@10.42.0.201 
ssh-copy-id cubespawn@10.42.0.202
ssh-copy-id cubespawn@10.42.0.203
ssh-copy-id cubespawn@10.42.0.204
ssh-copy-id cubespawn@10.42.0.206
ssh-copy-id cubespawn@10.42.0.207
ssh-copy-id cubespawn@10.42.0.208
ssh-copy-id cubespawn@10.42.0.209