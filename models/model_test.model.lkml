connection: "informes_junio"

#include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

include: "/views/mayo_2023_vw.view.lkml"
include: "/views/dormitorios.view.lkml"
include: "/views/toda_informacion.view.lkml"
include: "/views/propiedades_tipo_fast.view.lkml"
include: "/views/localizacion.view.lkml"
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }
explore: dormitorios{
}
explore: mayo_2023_vw {}
#explore: toda_informacion {}
explore: propiedades_tipo_fast {}
explore: localizacion {
  join: propiedades_tipo_fast {
    relationship: many_to_one
    sql_on: ${propiedades_tipo_fast.links}=${localizacion.links} ;;
  }
}
explore: toda_informacion {
  join: propiedades_tipo_fast {
    relationship: many_to_many
    sql_on: ${propiedades_tipo_fast.barrio}=${toda_informacion.barrio} and ${propiedades_tipo_fast.dormitorios}=${toda_informacion.dormitorios} and ${propiedades_tipo_fast.banos}=${toda_informacion.banios};;
  }
}
