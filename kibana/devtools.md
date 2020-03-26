





GET _search
{
  "query": {
    "match_all": {}
  }
}



GET logstash-2020.03.25-000001/_search
{
  "query": {
    "match_all": {}
  }
}



GET logstash-2020.03.25-000001/_search
{
  "query": {
    "match": {
      "message": "00204000022020031803211089207188251"
    }
  }
}