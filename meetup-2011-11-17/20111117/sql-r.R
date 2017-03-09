require(sqldf)

set.seed(2)
t1 <- data.frame(key1 = sample(letters, 100, replace=TRUE), 
                 value1 = rnorm(100))
t2 <- data.frame(key1 =  letters, 
                 value2 = 1:26)

## inner join
sqldf("SELECT t1.*, t2.* 
       FROM t1 INNER JOIN t2 on t1.key1 = t2.key1
       ")

merge(t1, t2)

## left outer join
sqldf("SELECT t1.*, t2.* 
       FROM t1 LEFT OUTER JOIN t2 on t1.key1 = t2.key1
       ")

merge(t1, t2, all.x=TRUE)

## select on criteria
sqldf("SELECT *
      FROM t1
      WHERE key1='t'
       ")

subset(t1, key1=='t')
t1[ which( t1$key1 == "t"), ]


