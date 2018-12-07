# cdp
cd plus unix builtin cd komutuna yapılmış üç eklemeden ibarettir
1. gelinen klasörde 50 den az dosya varsa `ls -1` komutu ile dosya içeriğini gösterir
2. gitmek istediğiniz klasör mevcut değilse açmak isteyip istemediğinizi sorar ve cevabınız doğrultusunda yeni klasör açar veya açmaz
3. gelinen klasörde virtual environment varsa(.env/) activate çalıştırılır virtual environment çıkışı ise deactivate çalıştır 

# Install
`mkdir $HOME/.ea`  
`cd $HOME/.ea`  
`git clone https://github.com/eaybek/cdp`  
for zsh  
`echo "source $HOME/.ea/cdp/cdp.zsh.lib.sh" >> $HOME/.zshrc`  
for bash  
`echo "source $HOME/.ea/cdp/cdp.bash.lib.sh" >> $HOME/.bashrc`  
