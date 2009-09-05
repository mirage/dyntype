TYPE_CONV_PATH "Tuple"

type t = {
  foo: int32;
  bar: string * char;
}
with persist()

let _ =
  let db = Orm.init "tuple.db" in
  let t1 = Orm.t_new ~foo:1l ~bar:("hello",'w') db in
  let id = t1#save in
  Printf.printf "saved: %Lu\n%!" id
