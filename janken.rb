#ジャンケンの処理
def janken

    puts "ジャンケン．．．"
    jyanken_hands = ["グー","チョキ","パー","戦わない"] #ジャンケンの手
    program_hands  = rand(3)

    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    self_hands = gets.to_i

    while self_hands >= 4
      puts "------------------------------------------"
      puts "ジャンケンに必要な数字0〜3を入力してください"
      puts "ジャンケン..."
      puts  "0(グー),1(チョキ),2(パー),3(戦わない)"
      self_hands = gets.to_i
     break
    end

   

    #ここから０、１、２を出した場合のジャンケンの処理
    if self_hands == 0 || self_hands == 1 || self_hands == 2
      puts "ホイ！" 
      puts "あなた：#{jyanken_hands[self_hands]} を出しました"
      puts "相手：#{jyanken_hands[program_hands]} を出しました"
      puts "-----------------------------------------------"

      if self_hands == program_hands #アイコの処理
        puts "あいこで〜"
          return janken
            #勝った時の処理
        elsif (self_hands == 0 && program_hands == 1) || (self_hands == 1 && program_hands == 2) || (self_hands == 2 && program_hands == 0) 
            $janken_result = "win"
              return attimuite
            #負けた時の処理
          elsif (self_hands == 1 && program_hands == 0) || (self_hands == 2 && program_hands == 1) || (self_hands == 0 && program_hands == 2)
            $janken_result = "lose"
              return attimuite
              
            end
          elsif self_hands == 3 #３を選んだ場合の処理
            puts "戦わない"
            puts "最初からお願いします"
            exit

            
      end
end



  


puts "-----------------------------------------------"


#以下あっち向いてホイ
def attimuite
    attimuite_hois = ["上","下","左","右"]   #あっち向いてホイの配列
    program_attimuite_hois = rand(4)
    
    puts "あっち向いて〜〜"
    puts "0(上),1(下),2(左),3(右)"
    
    self_attimuite_hois = gets.to_i
    
    if self_attimuite_hois > 4
      puts "-----------------------------------------------"
      puts "4以下の数字を入力してください"
    else
      puts "あなた:#{attimuite_hois[self_attimuite_hois]}を出しました"
      puts "相手:#{attimuite_hois[program_attimuite_hois]}を出しました"
    end
    
    if ($janken_result == "win" && self_attimuite_hois == program_attimuite_hois)
        puts "あなたの勝ちです!!"
        exit
      elsif  ($janken_result == "lose" && program_attimuite_hois == self_attimuite_hois)
        puts "あなたの負けです。。。"
        exit
        else
          puts "ジャンケンから再スタート"
          puts "-----------------------------------------------"
          return janken
    end

end




janken
attimuite