api_key <- "84pGQzhPORqkyOX4jYnLIjesc"
api_secret <- "Hj79VOU6EvLa9myaua00COCJwIRxwZkZqg5BCeFtZsc91TAeRi"
access_token <- "361627729-nhPf8IqdIAEPt5lq0RUBWGIb0xUB3clKCx3U4FmJ"
access_token_secret <- "B1IrIFnACQIlG9D7896fFv2knCX5aKsVUMlLYs9PT4PXo"

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

Formula1_tweets <- searchTwitteR("@WHO", n = 2000,lang = 'en',since = '2020-03-01',until = '2020-06-09',
                                 geocode = '20.593684,78.96288,1000km')
Formula1_tweets <- searchTwitteR("#AmulVsChina", n = 1500,lang = 'en',since = '2020-06-01',until = '2020-06-08')
Rtweets(n=50)
                    

Formula1_tweets_df <- twListToDF(Formula1_tweets)
Formula1_tweets_df <- Formula1_tweets_df[Formula1_tweets_df$retweeted>100]
dim(Formula1_tweets_df)
View(Formula1_tweets_df)

write.csv(Formula1_tweets_df,file=paste("WHO_less.csv"))

###########################################################################################
AntiChina_Tweets <- searchTwitteR("#BoycottMadeInChina", n = 500,lang = 'en',
                                  since = '2020-05-28',until = '2020-06-03')
AntiChina_Tweets_df <- twListToDF(AntiChina_Tweets)
write.csv(AntiChina_Tweets_df,file=paste("BoycottChina.csv"))


AntiChina_Tweets1 <- searchTwitteR("#BoycottMadeInChina", n = 500,lang = 'en',
                                  since = '2020-06-03',until = '2020-06-06')
AntiChina_Tweets_df1 <- twListToDF(AntiChina_Tweets1)
write.csv(AntiChina_Tweets_df1,file=paste("BoycottChina1.csv"))
                                  

AntiChina_Tweets2 <- searchTwitteR("#BoycottMadeInChina", n = 500,lang = 'en',
                                   since = '2020-06-06',until = '2020-06-08')
AntiChina_Tweets_df2 <- twListToDF(AntiChina_Tweets2)
write.csv(AntiChina_Tweets_df2,file=paste("BoycottChina2.csv"))



AntiChina_Tweets3 <- searchTwitteR("#BoycottMadeInChina", n = 500,lang = 'en',
                                   since = '2020-06-08',until = '2020-06-10')
AntiChina_Tweets_df3 <- twListToDF(AntiChina_Tweets3)
write.csv(AntiChina_Tweets_df3,file=paste("BoycottChina3.csv"))



AntiChina_Tweets_df = rbind(AntiChina_Tweets_df,AntiChina_Tweets_df1,
                            AntiChina_Tweets_df2,AntiChina_Tweets_df3)
write.csv(AntiChina_Tweets_df,file=paste("BoycottChinaMAIN.csv"))




