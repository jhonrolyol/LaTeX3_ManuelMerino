
package pkg08_operadoresaritmeticos;

import java.util.Scanner;

/**
 *
 * @author GAMER
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        
        Scanner entrada = new Scanner(System.in);
        
        float numero1, numero2,suma, resta, mult,div, resto;
        
        System.out.print("Digite 2 numeros: ");
        numero1 = entrada.nextFloat();
        numero2 = entrada.nextFloat();
        
        suma = numero1+ numero2;
        resta = numero1-numero2;
        mult = numero1 * numero2;
        div = numero1/numero2;
        resto = numero1 % numero2;
        
        System.out.println("La suma es: " + suma); // sout + tab
        System.out.println("La multiplicacion es: " + mult);
        System.out.println("La division es: " + div);
        System.out.println("El resto es: " + resto);
        
    }
    
}

// Note: file -- new project -- java aplication -- next -- 
// 