
view: localizacion {
  derived_table: {
    sql: SELECT * FROM [propins-web:propiedades_fast.Localizacion] ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: links {
    type: string
    sql: ${TABLE}.Links ;;
  }

  dimension: seguridad {
    type: number
    sql: ${TABLE}.Seguridad ;;
  }

  dimension: transporte {
    type: number
    sql: ${TABLE}.Transporte ;;
  }

  dimension: area_verde {
    type: number
    sql: ${TABLE}.Area_Verde ;;
  }

  dimension: loc {
    type: string
    sql: ${TABLE}.loc ;;
    map_layer_name: comunas
  }

  dimension: Region {
    type: string
    sql: ${TABLE}.Region ;;
    map_layer_name: regiones
  }

  set: detail {
    fields: [
        index,
  links,
  seguridad,
  transporte,
  area_verde,
  loc,
  Region
    ]
  }
}
