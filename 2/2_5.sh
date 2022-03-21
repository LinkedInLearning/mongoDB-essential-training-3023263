cd datasets
mongoimport --username="naomi" --authenticationDatabase="admin" --db=sample_data inventory.json
mongoimport --username="naomi" --authenticationDatabase="admin" --db=sample_data movies.json
mongoimport --username="naomi" --authenticationDatabase="admin" --db=sample_data orders.json