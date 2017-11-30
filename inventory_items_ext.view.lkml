include: "inventory_items.view.lkml"
view: inventory_items_ext {
extends: [inventory_items]

  measure: profit {
    type: sum
    sql: ${order_items.sale_price} - ${cost} ;;
  }

 }
