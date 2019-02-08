require 'pry'
def dictionary
  {
    "hello"=>"hi",
    "to" =>"2",
    "two" =>"2",
    "too" =>"2",
    "for"=>"4",
    "four"=>"4",
    "be" =>"b",
    "you" =>"u",
    "at" =>"@",
    "and" =>"&" 
  }
end

def word_substituter(tweet)
 new_tweet = tweet.split(' ')
 updated_tweet= new_tweet.collect do |word|
   if dictionary[word.downcase]
     dictionary[word.downcase]  
   else
     word
 end
 end
 updated_tweet.join(' ')
end

def bulk_tweet_shortener(tweets)
 tweets.each do |word| 
   puts tweet = word_substituter(word)
 end
end

def selective_tweet_shortener(tweet)
  new_tweet = tweet.split('')
  if new_tweet.length < 140
     binding pry
    new_tweet.join(' ')
    
  else
   puts word_substituter(tweet)
   
  end
end

def shortened_tweet_truncator(tweet)
  
end