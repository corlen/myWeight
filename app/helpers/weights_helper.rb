module WeightsHelper
  
  def calculate_fat_weight_percent(height, waist, neck)
    (495/((1.0324-((Math.log(waist-neck)/Math.log(10))*0.19077)) + (Math.log(height)/Math.log(10))*0.15456))-450
  end

  def calculate_lean_weight_percent(height, waist, neck)
    return 100-calculate_fat_weight_percent(height, waist, neck)
  end
  
  def calculate_fat_weight(weight, height, waist, neck)
    (calculate_fat_weight_percent(height, waist, neck))/100 * weight
  end
      
  def calculate_lean_weight(weight, height, waist, neck)
    (calculate_lean_weight_percent(height, waist, neck))/100 * weight
  end
  
  def print_all_values(weight, height, waist, neck, perc_fat)
    weight.to_s + "#" + height.to_s + "#" + waist.to_s + "#" + neck.to_s + "#" + perc_fat.to_s
  end   
  
end
