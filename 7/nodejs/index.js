const mongoose = require('mongoose');
const { config } = require('dotenv');

main().catch(err => console.log(err));

async function main() {
  config();

  const uri = 'mongodb://0.0.0.0:27017/admin?retryWrites=true&w=majority';

  await mongoose.connect(uri, {
    dbName: "sample_data",
    user: process.env.DB_USER,
    pass: process.env.DB_PASSWORD
  }).then(() => {
    console.log('Connection established with MongoDB');
  }).catch(error => console.error(error.message));

  const { Schema } = mongoose;

  const authorSchema = new Schema({
    author: String,
    message: String
  }, { db: 'sample_data', collection: 'testnodejs' });

  const Author = mongoose.model('Author', authorSchema);
  const author = new Author({ author: 'Naomi Pentrel', message: 'hello world!' });

  await author.save((error) => {
    if (error) {
      return console.log(`Error has occurred: ${error}`);
    }
    console.log('Document is successfully saved.');
    Author.find(
      {},
      function (error, documents) {
        if (error) {
          return console.log(`Error has occurred: ${error}`);
        }
        console.log("document found:" + documents);
      }
    );
  })
}

