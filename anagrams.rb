def first_anagram?(str)
    arr = str.split("")
    
    arr.permutation.to_a
end

def anagram?(str1, str2)
    a = first_anagram?(str1)

    a.include?(str2.split(""))
end


p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true


def second_anagram?(str1, str2)
    str1.each_char do |char|
        
    end
end


def anagram?(str1, str2)
    str1.each_char.with_index do |char, i|
        
    end
end