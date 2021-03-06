
(; // JS コードブロック
 // 定数値をコンテキスト・オブジェクトに定義する
 $.BAR = 4;
 $.FLAG_FOO = 1;
 $.ERROR = 0;
 ;)
(module
  (memory $memory 1 )
  (export "memory" (memory $memory))
  (export "test" (func $test))
    (func $test (result i32)
      (if (result i32)
        (; offset bar(offset 4)の値とbit 1のandをとる;)
        (i32.and 
          (i32.load (i32.const 4 (; BAR ;))) (; offset bar ;)
          (i32.const 1 (; FLAG_FOO ;)) (; bit flag foo ;)
        )
        (then
          (; 立っていたら bar(offset 4)の値を返す ;)
          (i32.load (i32.const 4 (; BAR ;))) (; offset bar ;)
        )
        (else 
          (i32.const 0 (; ERROR ;)) 
        )
      )
    )
)
