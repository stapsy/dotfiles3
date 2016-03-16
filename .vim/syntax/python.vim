"test syntax


syntax match grumbleOperator "\v\*"
syntax match grumbleOperator "\v\%"
syntax match grumbleOperator "\v/"
syntax match grumbleOperator "\v\+"
syntax match grumbleOperator "\v-"
syntax match grumbleOperator "\v\="
syntax match grumbleOperator "\v\*\="
syntax match grumbleOperator "\v/\="
syntax match grumbleOperator "\v\+\="
syntax match grumbleOperator "\v-\="	
syntax match grumbleOperator "\v\<"	
syntax match grumbleOperator "\v\>"	

hi! link grumbleOperator Operator	

"syntax keyword grumblePrint print
"hi! link grumblePrint Normal
