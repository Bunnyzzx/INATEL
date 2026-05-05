use std::io;

fn imprimir_multiplos(numero: i32, limite_inferior: i32, limite_superior: i32) {
    for i in limite_inferior..=limite_superior {
        if i % numero == 0 {
            println!("{}", i);
        }
    }
}

fn main() {
    let mut numero = String::new();
    let mut limite_inferior = String::new();
    let mut limite_superior = String::new();

    println!("Digite o número da tabuada:");
    io::stdin()
        .read_line(&mut numero)
        .expect("Erro ao ler o número");

    println!("Digite o limite inferior:");
    io::stdin()
        .read_line(&mut limite_inferior)
        .expect("Erro ao ler o limite inferior");

    println!("Digite o limite superior:");
    io::stdin()
        .read_line(&mut limite_superior)
        .expect("Erro ao ler o limite superior");

    let numero: i32 = numero.trim().parse().expect("Digite um número válido");
    let limite_inferior: i32 = limite_inferior.trim().parse().expect("Digite um número válido");
    let limite_superior: i32 = limite_superior.trim().parse().expect("Digite um número válido");

    println!("Múltiplos de {} entre {} e {}:", numero, limite_inferior, limite_superior);
    imprimir_multiplos(numero, limite_inferior, limite_superior);
}