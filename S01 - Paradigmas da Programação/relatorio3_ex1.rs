use std::io;

fn verificar_senha(senha: &str) -> bool {
    let mut qtd_numeros = 0;
    let mut tem_maiuscula = false;

    for c in senha.chars() {
        if c.is_digit(10) {
            qtd_numeros += 1;
        }
        if c.is_ascii_uppercase() {
            tem_maiuscula = true;
        }
    }

    senha.len() >= 10 && qtd_numeros >= 2 && tem_maiuscula
}

fn main() {
    loop {
        let mut senha = String::new();

        println!("Digite uma senha:");
        io::stdin()
            .read_line(&mut senha)
            .expect("Erro ao ler a senha");

        let senha = senha.trim();

        if verificar_senha(senha) {
            println!("A senha é válida, seja bem vindo!");
            break;
        } else {
            println!("Senha inválida. Tente novamente.");
        }
    }
}