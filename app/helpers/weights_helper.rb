module WeightsHelper
  
  def calculate_fat_weight(weight, height, waist, neck, perc_fat)
   return  (((495/((1.0324-((Math.log(waist-neck)/Math.log(10))*0.19077)) + (Math.log(height)/Math.log(10))*0.15456))-450)/100)*weight
  end

  def calculate_lean_weight(weight, height, waist, neck, perc_fat)
    100 - ((((495/((1.0324-((Math.log(waist-neck)/Math.log(10))*0.19077)) + (Math.log(height)/Math.log(10))*0.15456))-450)/100)*weight)
  end
  
end
