# README

# Hackertees - Store for developer t-shirts

Rails app for a basic e-commerce store.

### Gems



### Database structure

#### Product
* name:string
* description:text
* price:float
* image:string
* in_stock:boolean

Relationship: has_many :order_items

#### Order_item
* quantity:int
* unit_price:int
* sub_total:int

Relationship: belongs_to :order, belongs_to :product


#### Order
* total_price:int
* user_info:text

Relationship: has_many :order_items

#### Inventory

#### User

