require 'sinatra'

get '/' do
  "<div style='border: 3px dashed red'>
    <img src='http://scontent-lhr3-1.xx.fbcdn.net/hphotos-xpf1/v/t1.0-9/10987379_10153625804937738_1053202883179298049_n.jpg?oh=98b41bcd500268d18fe7c8fd6c588714&oe=562B0E8B'>
  </div>"
end

get '/secret!!' do
  'This is a secret page'
end
