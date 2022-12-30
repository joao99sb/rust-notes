## Para que serve o **Box**?

o **Box** é um tipo de dado que permite alocar um valor na heap e armazenar consigo o ponteiro

um exemplo esquemático

                :Heap
        |        _____    |
        |       |value|   |    <-  value and
        |                 |        addrs
        |-----------------|
        |                 |
        |       _BOX__    |
        |      |_*Ptr_|   |    <- Ptr == addr
        |                 |
        |-----------------|

O **Box** é um padrão que facilita usar ponteiros

## Exemplo

Lista Lincada

```rs

   struct LinkedList {
    value: i32,
    next: Option<Box<LinkedList>>,
}

fn main() {
    let list = LinkedList {
        value: 5,
        next: Some(Box::new(LinkedList {
            value: 6,
            next: Some(Box::new(LinkedList {
                value: 7,
                next: None,
            })),
        })),
    };

    println!("{:?}", list);
}

```
