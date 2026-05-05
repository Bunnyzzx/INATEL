use std::io;

fn eh_impar(numero: i32) -> bool {
    numero % 2 != 0
}

fn main() {
    let mut escolha = String::new();
    let mut numero1 = String::new();
    let mut numero2 = String::new();

    println!("Jogador 1, escolha 'par' ou 'impar':");
    io::stdin()
        .read_line(&mut escolha)
        .expect("Erro ao ler a escolha");

    println!("Jogador 1, digite seu número:");
    io::stdin()
        .read_line(&mut numero1)
        .expect("Erro ao ler o número do Jogador 1");

    println!("Jogador 2, digite seu número:");
    io::stdin()
        .read_line(&mut numero2)
        .expect("Erro ao ler o número do Jogador 2");

    let escolha = escolha.trim().to_lowercase();
    let numero1: i32 = numero1.trim().parse().expect("Digite um número válido");
    let numero2: i32 = numero2.trim().parse().expect("Digite um número válido");

    let soma = numero1 + numero2;
    let soma_impar = eh_impar(soma);

    println!("A soma dos números foi: {}", soma);

    if (escolha == "impar" && soma_impar) || (escolha == "par" && !soma_impar) {
        println!("Jogador 1 venceu!");
    } else {
        println!("Jogador 2 venceu!");
    }
}