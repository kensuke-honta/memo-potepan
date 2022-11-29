require "csv"

puts "1(新規でメモを作成する) 2(既存のメモを編集する)"
memo_type = gets.to_i
if memo_type == 1 #1(新規でメモを作成する）場合
    
    puts "拡張子を除いたファイルを入力してください"
    memo_file = gets.chomp

    puts "メモしたい内容を記入してください"
    puts "完了したら、Ctrl ± D を押します"
    memo = STDIN.read
    CSV.open("#{memo_file}.csv",'w') do |csv|
        csv << [memo]
    end





    elsif memo_type == 2 #2(既存のメモを編集する）場合
        puts "編集した拡張子を除いたファイルを入力してください"
        memo_word = gets.chomp
        puts "メモしたい内容を記入してください"
        puts "完了したら、Ctrl + D を押します" 
        memo = STDIN.read
        CSV.open("#{memo_word}.csv",'a') do |csv|
            csv << [memo]
        end 


    else     #１、２以外の番号が入力された場合
        puts "1か2を押してください。 最初からお願いします"

end

