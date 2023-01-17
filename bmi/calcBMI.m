function bmi = calcBMI(height, weight)
    if (validateWeight(weight) & validateHeight(height))
        bmi = round(weight / height^2, 2);
    else 
        error("weight or height not valide") 
    end
end
