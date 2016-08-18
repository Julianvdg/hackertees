function updateQuantity(id, quantity = 1){
  $.ajax({url: '/cart/change_quantity/' + id,
    data: {quantity: quantity},
    error:function(data){
      console.error(data);
    },
    success:function(data){
      console.log(data);
    }
  });
}

function deleteItem(id){
  $.ajax({url: '/cart/delete_item/' + id,
    error:function(data){
      console.error(data);
    },
    success:function(data){
      console.log(data);
    }
  });
}
