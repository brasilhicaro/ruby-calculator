$choses = {
    "+" => "Adicao",
    "-" => "Subtracao",
    "/" => "Divisao",
    "*" => "Multiplicacao", 
    ".."=> "FIM"
}

def intro
    option = ""
    while option != ".."
      
        user_chose = chose
        if user_chose != ".."
          
            puts "Adicione o primeiro numero: "
    
            num1 = gets.chomp.to_i
    
            puts "Adicione o segundo numero: "
    
            num2 = gets.chomp.to_i
        end

        case user_chose
            when "+"
                puts num1 + num2
            when "-"
                puts num1 - num2
            when "/"
                puts num1.to_f / num2
            when "*"
                puts num1 * num2
            when ".."
                puts "Ate a proxima!"
                break
            else
                puts "Operador inválido"
        end
    end
end

def chose
    selected = ""
    while selected == ""
        puts "Hi, Escolha uma operacao matematica:"
        puts "OPTIONS:"
        $choses.each do |operacao, description|
            puts "Operador #{operacao}: #{description}"
        end

        puts "Escolha: "
        selected = gets.chomp
        selected = selected.strip.downcase

        unless $choses.keys.include?(selected)
            puts "Operador invalido!"
            selected = ""
        end
    end
    selected
end

intro
