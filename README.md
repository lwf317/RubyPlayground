# RubyPlayground
Playing with Ruby here.
各種有用的, 無用的, 練習性質的, 以及小工具等級的 Ruby 程式.

### md5hashisos.rb
Generate MD5 digest for all files whose extension is *.iso* in a single directory, no recursive. The generated value will be stored in a text file and the file will be named as *original basename*-MD5.txt.

為單一資料夾(不遞迴)裡的所有副檔名為 *.iso* 的檔案產生 MD5 雜湊字串, 產生的內容會被儲存為一個文字檔, 檔名為 *原本基礎檔名*-MD5.txt.

### checkexcludedfiles.rb
Check whether specific files *NOT* resident within a directory. The specific files list comes from a simple text file, one item per line. If it pass the test the console prints "OK", else the console prints "Failed" and name of failed items.

檢查某些檔案是否 *不存在* 於指定資料夾. 檔案清單來自於另一個簡易文字檔, 一行一個檔名. 若是清單上的所有檔案都不存在, 表示通過測試, 主控台只印出一個 "OK" ; 否則即為測試失敗, 主控台會印出一個 "Failed" 以及不應存在但卻存在的檔名.

### removerightcommas.rb
Read a text file and remove continuous commas at the tail of each line. After that write them to a new text file which is named as *OriginalFullName.alt*.

讀進一個文字檔之後, 將每一行行尾的連續逗號去除, 之後再將結果寫進一個新檔案. 新檔案檔名為 *原檔名.alt*.
