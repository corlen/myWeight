module WeightsHelper
  
#  def calculate_fat_weight_percent(height, waist, neck)
 #   (495/((1.0324-((Math.log(waist-neck)/Math.log(10))*0.19077)) + (Math.log(height)/Math.log(10))*0.15456))-450
  #end
  
  def calculate_fat_weight_percent(height, waist, neck, hip, gender)
    if(gender == "Male")
      (495/((1.0324-((Math.log(waist-neck)/Math.log(10))*0.19077)) + (Math.log(height)/Math.log(10))*0.15456))-450
    else
      (495/((1.29579-(0.35004*(Math.log((hip+waist)-neck)/Math.log(10)))) + (Math.log(height)/Math.log(10))*0.22100))-450
    end  
  end

  def calculate_lean_weight_percent(height, waist, neck, hip, gender)
    return 100-calculate_fat_weight_percent(height, waist, neck, hip, gender)
  end
  
  def calculate_fat_weight(weight, height, waist, neck, hip, gender)
    (calculate_fat_weight_percent(height, waist, neck, hip, gender))/100 * weight
  end
      
  def calculate_lean_weight(weight, height, waist, neck, hip, gender)
    (calculate_lean_weight_percent(height, waist, neck, hip, gender))/100 * weight
  end
  
  def print_all_values(weight, height, waist, neck, perc_fat, hip)
    weight.to_s + " # " + height.to_s + " # " + waist.to_s + " # " + neck.to_s + " # " + perc_fat.to_s + " # " + hip.to_s + " # "
  end 
  
  def calculate_ideal_weight(weight, height, waist, neck, hip, perc_fat, gender)
     (weight - (calculate_fat_weight_percent(height, waist, neck, hip, gender) / 100 * weight)) / (1 - (perc_fat / 100));
  end  
  
  #"4-hour body" measure
  def calculate_total_inches(waist, hip, right_arm, left_arm, right_leg, left_leg)
    ti = 0
    if(right_arm != 0 or left_arm != 0 or right_leg != 0 or left_leg != 0)
      ti = (waist + hip + right_arm + left_arm + right_leg + left_arm)
    end
    return ti
  end   
  
end
