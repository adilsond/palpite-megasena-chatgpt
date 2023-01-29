use rand::Rng;

fn gerar_dezenas() {
    let mut numeros = vec![];
    let mut rng = rand::thread_rng();
    for _ in 0..6 {
        let mut numero = rng.gen_range(1, 61);
        while numeros.contains(&numero) {
            numero = rng.gen_range(1, 61);
        }
        numeros.push(numero);
    }
    numeros.sort();
    println!("Palpite para Mega-Sena");
    print!("As dezenas sorteadas são: ");
    for i in 0..numeros.len() {
        print!("{}", numeros[i]);
        if i < numeros.len()-1 {
            print!(" - ");
        }
    }
    println!("\nAs dezenas na ordem são: ");
    for i in 0..numeros.len() {
        print!("{}", numeros[i]);
        if i < numeros.len()-1 {
            print!(" - ");
        }
    }
    println!("");
}

fn main() {
    gerar_dezenas();
}
