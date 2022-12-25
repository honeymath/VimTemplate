
let line=getline('.')
let line = '0'.line

let flag = 0 " A flag to indicate if enter successfully

"Append an 0 so that there is no missing position
if flag == 0
	try
		let searchinput=split(split(line,"\\input\{")[1],"\}")[0]
		let flag = 1
		let enter = searchinput
	catch
	endtry
endif

if flag == 0
	try
		let searchparen=split(split(line,"](")[1],")")[0]
		let flag = 1
		let enter = searchparen
	catch
	endtry
endif

if flag == 0
	echo "not able to enter"
else
	let soap=split(enter,"[.]")
	if(len(soap)>1)
		let temp="e ".expand('%:p:h')."/".enter
		call insert(counter,expand('%:p'),0)
		call insert(position,line('.'),0)
		execute temp
	else
		let temp="e ".expand('%:p:h')."/".enter.".tex"
		call insert(counter,expand('%:p'),0)
		call insert(position,line('.'),0)
		execute temp
		execute "setf tex"
	endif
endif


