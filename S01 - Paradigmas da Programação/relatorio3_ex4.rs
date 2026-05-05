use std::io;

fn calcular_media(nota1: f64, nota2: f64, nota3: f64) -> f64 {
    let npt = (nota1 + nota2) / 2.0;
    let media_final = (npt * 0.7) + (nota3 * 0.3);
    media_final
}

fn main() {
    let mut nota1 = String::new();
    let mut nota2 = String::new();
    let mut nota3 = String::new();

    println!("Digite a nota da NP1:");
    io::stdin()
        .read_line(&mut nota1)
        .expect("Erro ao ler a NP1");

    println!("Digite a nota da NP2:");
    io::stdin()
        .read_line(&mut nota2)
        .expect("Erro ao ler a NP2");

    println!("Digite a nota da NPL:");
    io::stdin()
        .read_line(&mut nota3)
        .expect("Erro ao ler a NPL");

    let nota1: f64 = nota1.trim().parse().expect("Digite uma nota válida");
    let nota2: f64 = nota2.trim().parse().expect("Digite uma nota válida");
    let nota3: f64 = nota3.trim().parse().expect("Digite uma nota válida");

    let npt = (nota1 + nota2) / 2.0;
    let media_final = calcular_media(nota1, nota2, nota3);

    println!("NPT: {:.2}", npt);
    println!("Média final: {:.2}", media_final);

    if npt >= 60.0 && nota3 >= 60.0 {
        println!("Parabéns! Você foi aprovado.");
    } else {
        println!("Reprovado.");
    }
}