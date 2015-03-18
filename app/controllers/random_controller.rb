class RandomController < ApplicationController
  def index

 # Within that controller, try all the query samples from the query guide
 #   section 1.1 (skipping the batches) and sections 2, 3, 4, and 5 and put
 #   a comment above as to why each is used.

 # Find the client with primary key (id) 10.
    client = Client.find(82)

 # Find the clients with primary keys 1 and 2.
    client = Client.find([82, 83])
 # Take method retrieves a record without any implicit ordering
    client = Client.take

 #You can pass in a numerical argument to the take method to return up to that number of results. For example
    client = Client.take(2)

# First method finds the first record ordered by the primary key.
    client = Client.first

# The first method returns nil if no matching record is found and no exception will be raised.

# You can pass in a numerical argument to the first method to return up to that number of results. For example

    client = Client.first(3)

# The last method finds the last record ordered by the primary key. For example:

    client = Client.last

# You can pass in a numerical argument to the last method to return up to that number of results. For example

    client = Client.last(3)

# The find_by method finds the first record matching some conditions. For example:

    Client.find_by(first_name: 'Bradley')

# Section 2 Conditions

    Client.where("orders_count = '2'")

# Now what if that number could vary, say as an argument from somewhere? The find would then take the form:

    Client.where("orders_count = ?", params[:orders])

# Similar to the (?) replacement style of params, you can also specify keys/values hash in your array conditions:

    Client.where("created_at >= :start_date AND created_at <= :end_date",
    {start_date: params[:start_date], end_date: params[:end_date]})


# Equality Conditions

    Client.where(name: true)
# 2.3.2 Range Conditions
# This will find all clients created yesterday by using a BETWEEN SQL statement:
    Client.where(created_at: (Time.now.midnight - 1.day)..Time.now.midnight)

# 3 Ordering
# To retrieve records from the database in a specific order, you can use the order method.
    Client.order(:created_at)
    # OR
    Client.order("created_at")

# You could specify ASC or DESC as well
    Client.order(created_at: :desc)

    Client.order(created_at: :asc)

# To select only a subset of fields from the result set, you can specify the subset via the select method.

# For example, to select only viewable_by and locked columns:

    Client.select('first_name, last_name')

# Limits the number of records to be shown.

    Client.limit(4)

# Will return a maximum 4 clients beginning with the 21st

    Client.limit(4).offset(20)




  end
end
