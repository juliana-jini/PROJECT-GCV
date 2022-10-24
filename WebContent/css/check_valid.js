function checkid(){
	var empty = /\s/g; //공백
	var id_type= /^[a-z]+[a-z0-9]{5,19}$/g; //영문자로 시작하는 영문 또는 숫자 6~20자
	if(!document.ch2.id2.value.match(id_type) || document.ch2.id2.value.match(empty) ){
			alert('아이디는 영문자로 시작하는 영문 또는 숫자 6~20자로 입력해 주세요. ');
			document.ch2.id2.focus();
			return false;
		}
	
}