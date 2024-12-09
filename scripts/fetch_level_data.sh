#!/bin/bash

# 设置内部字段分隔符为逗号
IFS=','
 
# 假设你的CSV文件名为file.csv
while read col1 col2
do
  curl -s http://127.0.0.1:11523 -X POST -H "Content-Type: application/json" -d '{"method":"eth_getTransactionByHash","params":["'"${col1}"'"],"id":1,"jsonrpc":"2.0"}' | jq '.result.hash,.result.from,.result.input'| xargs echo $1
done < tran.csv
