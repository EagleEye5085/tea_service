## Rails Take-Home Challenge

### Mission
* An endpoint to subscribe a customer to a tea subscription
* An endpoint to cancel a customer’s tea subscription
* An endpoint to see all of a customer’s subsciptions (active and cancelled)

## Schema
<h2 id="Schema"> :scroll: Schema</h2>
<img src="https://user-images.githubusercontent.com/103777621/201150358-154da3c1-b083-4d71-b87c-a2f878b842d9.png"

## API Endpoints

* POST "http://localhost:3000/api/v1/customers/1/customer_subscriptions?customer_id=1&subscription_id=1"

```JSON
{
  "data":{
    "id":"1",
    "type":"customer_subscription",
    "attributes":{
      "customer_id":1, "subscription_id":1, "is_subscribed":"true"
      }
    }
  }
```

* Patch "http://localhost:3000/api/v1/customers/1/customer_subscriptions/1?subscription_id=1&is_subscribed=0"

```JSON
{
  "data":{
    "id":"1",
    "type":"customer_subscription",
    "attributes":{
      "customer_id":1, "subscription_id":1, "is_subscribed":"false"
      }
    }
  }
status: accepted
```

* GET "http://localhost:3000/api/v1/customer/1"
```JSON
{
  "data":[
    {
      "id":"1",
      "type":"customer_subscription",
      "attributes":{
        "customer_id":1, "subscription_id":1, "is_subscribed":"true"
        }
      },
    {
      "id":"2",
      "type":"customer_subscription",
      "attributes":{
        "customer_id":1, "subscription_id":2, "is_subscribed":"true"
        }
      },
    {
      "id":"3",
      "type":"customer_subscription",
      "attributes":{
        "customer_id":1, "subscription_id":3, "is_subscribed":"false"
        }
      }
    ]
  }
```

#### Contributors
Thomas Turner
[![Linkedin Badge](https://img.shields.io/badge/-LinkedIn-blue?style=flat&logo=Linkedin&logoColor=white)](https://www.https://www.linkedin.com/in/thomasturner482/)  [![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://https://github.com/EagleEye5085)
