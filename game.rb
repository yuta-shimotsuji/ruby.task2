
#カウンター
@i = 0
@draw = 0
@counter = 0
@counter_enemy = 0

def janken # jankenアクション
 
 if @draw == 0
  puts "じゃんけん..."
 end 
 
 puts "[0]グー/[1]チョキ/[2]パー/[3]やめる"
 
 @janken = gets.to_i
 @janken_enemy = rand(4)
 @num = @janken
 @num_enemy = rand(3)
 
 
 case @num
  when 0
   @janken = "グー"
  when 1
   @janken = "チョキ"
  when 2
   @janken = "パー"
  when 3
   exit!
 end
 
 case @num_enemy
  when 0
   @janken_enemy = "グー"
  when 1
   @janken_enemy = "チョキ"
  when 2
   @janken_enemy = "パー"
 end
 
 if @i < 1
  puts "ホイ!"
 else
  puts "ショ!"
  @i = 0
 end
 
 
 puts "------------------------------------"
 puts "あなた：#{@janken}"
 puts "あいて：#{@janken_enemy}"
 puts "------------------------------------"
 
 if @janken == "グー" && @janken_enemy == "チョキ"
  @counter += 1
 elsif @janken == "チョキ" && @janken_enemy == "パー"
  @counter += 1
 elsif @janken == "パー" && @janken_enemy == "グー"
  @counter += 1
 elsif @janken_enemy == "グー" && @janken == "チョキ"
  @counter_enemy += 1
 elsif @janken_enemy == "チョキ" && @janken == "パー"
  @counter_enemy += 1
 elsif @janken_enemy == "パー" && @janken == "グー"
  @counter_enemy += 1
 else
  puts "あいこで..." 
  @draw += 1
 end
end 


def look_over_there # look_over_thereアクション(自分が勝った時のあっち向いてホイ)
 
 puts "あっちむいて..."
 puts "[0]上/[1]下/[2]左/[3]右"
 
 @lot = gets.to_i
 @lot_enemy = rand(4)
 @numlot = @lot
 @numlot_enemy = rand(4)
 
 
 case @numlot
  when 0
   @lot = "上"
  when 1
   @lot = "下"
  when 2
   @lot = "左"
  when 3
   @lot = "右"
 end
 
 case @numlot_enemy
  when 0
   @lot_enemy = "上"
  when 1
   @lot_enemy = "下"
  when 2
   @lot_enemy = "左"
  when 3
   @lot_enemy = "右"
 end
 
 puts "ホイ!"
 puts "------------------------------------"
 puts "あなた：#{@lot}"
 puts "あいて：#{@lot_enemy}"
 puts "------------------------------------"

 if @lot == @lot_enemy
  puts "あなたの勝ちです"
  exit!
 end

end 

def look_over_there_enemy # look_over_there_enemyアクション(相手が勝った時のあっち向いてホイ)
 
  puts "あっちむいて..."
  puts "[0]上/[1]下/[2]左/[3]右"
  
 
 @lotE = gets.to_i
 @lot_enemyE = rand(4)
 @numlotE = @lotE
 @numlot_enemyE = rand(4)
 
 
 case @numlotE
  when 0
   @lotE = "上"
  when 1
   @lotE = "下"
  when 2
   @lotE = "左"
  when 3
   @lotE = "右"
 end
 
 case @numlot_enemyE
  when 0
   @lot_enemyE = "上"
  when 1
   @lot_enemyE = "下"
  when 2
   @lot_enemyE = "左"
  when 3
   @lot_enemyE = "右"
 end
 
 puts "ホイ!"
 puts "------------------------------------"
 puts "あなた：#{@lotE}"
 puts "あいて：#{@lot_enemyE}"
 puts "------------------------------------"

 if @lotE == @lot_enemyE
  puts "あなたの負けです"
  exit!
 end

end 

#アクションメモ
# janken じゃんけん発動
# look_over_there あっち向いてホイ(あなた)
# look_over_there あっち向いてホイ(あいて)


if @i == 0
 janken()
 @i += 1
end # 初回のじゃんけん起動

loop do

 if @draw > 1 && @counter == 0 && @counter_enemy == 0
  janken()
 elsif @counter == 1
  look_over_there()
  @draw = 0
 elsif @counter_enemy == 1
  look_over_there_enemy()
  @draw = 0
 end
 
 @counter = 0
 @counter_enemy = 0
 janken()

end 