
(; // JS コードブロック
 // 定数値をコンテキスト・オブジェクトに定義する
 $.BAR = 4;
 $.FLAG_FOO = 1;
 $.ERROR = 0;
 $.Math = Math;
 ;)
(module
  (memory $memory 1 )
  (export "memory" (memory $memory))
  (export "test" (func $test))
    (func $test (result f32)
      (f32.const 2.82842712474619 (; BAR * Math.sin(Math.PI/4) ;))
    )
)
