# cdp
cd plus unix builtin cd komutuna yapılmış iki eklemeden ibarettir
1. gelinen klasörde 50 den az dosya varsa `ls -1` komutu ile dosya içeriğini gösterir
2. gitmek istediğiniz klasör mevcut değilse açmak isteyip istemediğinizi sorar ve cevabınız doğrultusunda yeni klasör açar veya açmaz


# Install
`mkdir $HOME/.ea`  
`cd $HOME/.ea`  
`git clone https://github.com/eaybek/cdp`  
`echo "source $HOME/.ea/cdp/cdp.zsh.lib.sh" >> $HOME/.zshrc`  
