### Datastore

I'm using Postgres as the Datastore and I've made a rake script to migrate the data from the CSV file: https://github.com/rdavila/home_test/blob/013a1435140622077ac1093b08658a941bb0c1db/lib/tasks/migrate.rake#L2
### How to test the app

You can use the following sample URL: http://frozen-ravine-3023.herokuapp.com/listings.json?min_bed=4&max_bed=5&min_bath=2&min_price=299727

Or via the `curl` command: `curl -H "Accept: application/json" --include 'http://frozen-ravine-3023.herokuapp.com/listings.json?min_bed=4&max_bed=5&min_bath=2&min_price=299727'`

### Some other things to implement
* Add tests. (I didn't make it because lack of time)
* Support for OR conditions via query string. (Right now we only support AND)
* Make more flexible the implementation that handle the dynamic SQL query.
