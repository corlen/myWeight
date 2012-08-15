module WeightsHelper
  
#  def calculate_fat_weight_percent(height, waist, neck)
 #   (495/((1.0324-((Math.log(waist-neck)/Math.log(10))*0.19077)) + (Math.log(height)/Math.log(10))*0.15456))-450
  #end
  
  def calculate_fat_weight_percent(height, waist, neck, hip)
    if(hip == nil)
      (495/((1.0324-((Math.log(waist-neck)/Math.log(10))*0.19077)) + (Math.log(height)/Math.log(10))*0.15456))-450
    else
      (495/((1.29579-(0.35004*(Math.log((hip+waist)-neck)/Math.log(10)))) + (Math.log(height)/Math.log(10))*0.22100))-450
    end  
  end

  def calculate_lean_weight_percent(height, waist, neck, hip)
    return 100-calculate_fat_weight_percent(height, waist, neck, hip)
  end
  
  def calculate_fat_weight(weight, height, waist, neck, hip)
    (calculate_fat_weight_percent(height, waist, neck, hip))/100 * weight
  end
      
  def calculate_lean_weight(weight, height, waist, neck, hip)
    (calculate_lean_weight_percent(height, waist, neck, hip))/100 * weight
  end
  
  def print_all_values(weight, height, waist, neck, perc_fat, hip)
    weight.to_s + " # " + height.to_s + " # " + waist.to_s + " # " + neck.to_s + " # " + perc_fat.to_s + " # " + hip.to_s + " # "
  end   
  
end
