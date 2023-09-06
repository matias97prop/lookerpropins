
view: propiedades_fast_test1 {
  derived_table: {
    sql: SELECT * FROM [propins-web:propiedades_fast.propiedades_fast_test] ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: index {
    type: string
    sql: ${TABLE}.index ;;
  }

  dimension: comunas {
    type: string
    sql: ${TABLE}.Comunas ;;
  }

  dimension: links {
    type: string
    sql: ${TABLE}.Links ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.Precio ;;
  }

  dimension: superficie_total {
    type: number
    sql: ${TABLE}.Superficie_Total ;;
  }

  dimension: superficie_util {
    type: number
    sql: ${TABLE}.Superficie_util ;;
  }

  dimension: dormitorios {
    type: number
    sql: ${TABLE}.Dormitorios ;;
  }

  dimension: banos {
    type: number
    sql: ${TABLE}.Banos ;;
  }

  dimension: estacionamientos {
    type: number
    sql: ${TABLE}.Estacionamientos ;;
  }

  dimension: barrio {
    type: string
    sql: ${TABLE}.Barrio ;;
  }

  dimension: tipo_propiedad {
    type: string
    sql: ${TABLE}.Tipo_propiedad ;;
  }

  dimension: uf_m2 {
    type: number
    sql: ${TABLE}.UF_m2 ;;
  }

  dimension: porcentaje_bajo_promedio {
    type: number
    sql: ${TABLE}.Porcentaje_bajo_promedio ;;
  }

  dimension: arriendo {
    type: number
    sql: ${TABLE}.Arriendo ;;
  }

  dimension: rentabilidad {
    type: number
    sql: ${TABLE}.Rentabilidad ;;
  }

  dimension: seguridad {
    type: string
    sql: ${TABLE}.Seguridad ;;
  }

  dimension: transporte {
    type: string
    sql: ${TABLE}.Transporte ;;
  }

  dimension: area_verde {
    type: string
    sql: ${TABLE}.Area_Verde ;;
  }

  set: detail {
    fields: [
        index,
  comunas,
  links,
  precio,
  superficie_total,
  superficie_util,
  dormitorios,
  banos,
  estacionamientos,
  barrio,
  tipo_propiedad,
  uf_m2,
  porcentaje_bajo_promedio,
  arriendo,
  rentabilidad,
  seguridad,
  transporte,
  area_verde
    ]
  }
}
