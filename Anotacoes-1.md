## Para que serve o **Option**: 
o **Option** é um tipo de dados que representa um valor que pode ser presente ou ausente.
é um padrao de código, como se fosse o Result do java script:

```js{

            const result = {data:null,error:null}

            funcaoQueRetornaAlgo(result)

            if(result.error){
              //tratar o erro
              // geralmente a mensagem de erro se encontra em resul.data
            }else{
              // lidar com o resultado que esta em result.data
            }

```

ja para o rust é assim a implementação em rust:

```rs
      let optional = None;
      check_optional(optional);

      let optional = Some(Box::new(9000));
      check_optional(optional);

      fn check_optional(optional: Option<Box<i32>>) {
          match optional {
              Some(p) => println!("fazer algo com o valor {p}",p),
              None => println!("fazer algo ja que não tem valor"),
          }
      }
```

um exemplo em código seria assim:

```rs

    fn find(haystack: &str, needle: char) -> Option<usize> {
        for (indx, letter) in haystack.chars().enumerate() {
            if letter == needle {
                return Some(indx);
            }
        }
        None
    }

    fn main() {
        let haystack = "hello";
        let needle = 'o';

        let result = find(haystack, needle);
        println!("Result: {:?}", result);

        let needle = 'x';
        let result = find(haystack, needle);
        println!("Result: {:?}", result);
    }

```

Neste exemplo, temos uma função find que procura um caractere em uma string e retorna o índice do primeiro caractere encontrado, se existir. Se o caractere não for encontrado, a função retorna None. Quando chamamos a função com o caractere 'o', ela imprime "Result: Some(4)", enquanto que com o caractere 'x' ela imprime "Result: None".
