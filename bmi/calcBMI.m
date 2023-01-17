function bmi = calcBMI(height, weight)
    if (validateWeight(weight) || validateHeight(height))
        throw error("weight or height not valide") 
    end 
    bmi = round(weight / height^2, 2);
end