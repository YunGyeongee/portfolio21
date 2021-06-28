// window : 브라우저 창에 대한 정보를 담고있는 객체 (모든 객체들의 최상위 객체)
// 


str = "전역변수";           // 자동으로 window객체의 필드로 잡힘
var str2 = "var 전역변수";   // ""


window.onload = function(){

    var str = "지역변수"; // 전역변수명과 중복
    var str3 = "새로운 지역변수";

    str4 = "전역변수일까?";

    console.log("=== str 출력 ===");
    console.log(str); // 해당 영역내에 지역변수명과 전역변수명이 동일한 변수 호출시, 지역변수가 우선권을 가짐
    
    // 전역변수에 접근하려면 window. 또는 this. 를 사용
    console.log(window.str);
    console.log(this.str);

    console.log("=== str2 출력===");
    console.log(str2);
    console.log(window.str2);
    console.log(this.str2);

    console.log("=== str3 출력 ===");
    console.log(str3);
    console.log(window.str3); // 지역변수이기때문에 console에는 undefined로 출력(정의되어있지 않음)
    console.log(this.str3);

    console.log("=== str4 출력 ===");
    console.log(str4);
    console.log(window.str4);
    console.log(this.str4);

};

function test(){
    alert(str4);
}

function typeTest(){

    var name = "김작가"; // 쌍따옴표, 홑따옴표 상관없음
    var age = 20; // "",''로 묶으면 문자열(string)이 됨
    var check = true;
    
    var hobby = ["영화", "음악", "낮잠"]; // 배열=>object
    var user = {
        // 속성명:속성값
        name:"김작가",
        age:20,
        id:"user01"
    }; //object

    var fn= function(){
        alert("익명함수");
    }; // 익명함수, function 자료형으로 저장

    var noVal; // 초기화가 안된 변수 undefined
    
    console.log(name);
    console.log(age);
    console.log(check);
    console.log(hobby);
    console.log(user);
    console.log(fn);
    console.log(noVal);

    // 자료형 확인할 때 사용되는 함수 : typeof(변수명)
    var divEl = document.getElementById("area");

    divEl.innerHTML = name + "의 자료형은 : " + typeof(name) + "<br>";
    divEl.innerHTML += age + "의 자료형은 : " + typeof(age) + "<br>";
    divEl.innerHTML += check + "의 자료형은 : " + typeof(check) + "<br>";
    divEl.innerHTML += hobby + "의 자료형은 : " + typeof(hobby) + "<br>";
    divEl.innerHTML += user + "의 자료형은 : " + typeof(user) + "<br>";
    divEl.innerHTML += fn + "의 자료형은 : " + typeof(fn) + "<br>";
    divEl.innerHTML += noVal + "의 자료형은 : " + typeof(noVal) + "<br>";

    divEl.innerHTML += divEl + "의 자료형은 : " + typeof(divEl) + "<br>";


    // 객체 내부 속성에 접근하려면 .속성명 으로 접근하면 된다
    console.log(user.name);
    console.log(user.age);
    console.log(user.id);

}