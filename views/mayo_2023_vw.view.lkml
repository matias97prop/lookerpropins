view: mayo_2023_vw {
  derived_table: {
    sql: SELECT * FROM [propins-web:informes_mayo_2023.mayo_2023] WHERE
      Comuna ='Independencia'AND Barrio='Hospitales' AND TipoPropiedad='Departamento' ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: banios {
    type: number
    sql: ${TABLE}.Banios ;;
  }

  dimension: barrio {
    type: string
    sql: ${TABLE}.Barrio ;;
  }

  dimension: ba__os {
    type: string
    sql: ${TABLE}.Ba__os ;;
  }

  dimension: comuna {
    type: string
    sql: ${TABLE}.Comuna ;;
  }

  dimension: dormitorios {
    type: number
    sql: ${TABLE}.Dormitorios ;;
  }

  dimension: estacionamientos {
    type: number
    sql: ${TABLE}.Estacionamientos ;;
  }

  dimension: link {
    type: string
    sql: ${TABLE}.Link ;;
  }

  dimension: precio {
    type: number
    sql: ${TABLE}.Precio ;;
  }

  dimension: superficie_total {
    type: number
    sql: ${TABLE}.SuperficieTotal ;;
  }

  dimension: superficie_util {
    type: number
    sql: ${TABLE}.SuperficieUtil ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  dimension: tipo_propiedad {
    type: string
    sql: ${TABLE}.TipoPropiedad ;;
  }

  dimension: uf_m2 {
    type: number
    sql: ${TABLE}.UF_m2 ;;
  }

  set: detail {
    fields: [
      banios,
      barrio,
      ba__os,
      comuna,
      dormitorios,
      estacionamientos,
      link,
      precio,
      superficie_total,
      superficie_util,
      tipo,
      tipo_propiedad,
      uf_m2
    ]
  }
}
